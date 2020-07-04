import 'package:flutter/material.dart';
import "package:http/http.dart" as http;
import 'package:ndosanga/detalhes/pagina_detalhes.dart';
import 'package:ndosanga/models/achados_model.dart';
import 'dart:async';
import 'dart:convert';

class PaginaAchado extends StatefulWidget {
  PaginaAchado({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _PaginaAchadoState createState() => _PaginaAchadoState();
}

class _PaginaAchadoState extends State<PaginaAchado> {
  Future getPosts() async {
    http.Response response =
        await http.get("http://192.168.8.100:8000/api/achados");
    return response;
  }

  var achados = List<Achado>();
  var dataAtual = DateTime.now();

  postsApi() {
    getPosts().then((onValue) {
      setState(() {
        Iterable list = json.decode(onValue.body);
        achados = list.map((model) => Achado.fromJson(model)).toList();
      });
    });
  }

  @override
  void initState() {
    super.initState();
    postsApi();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: DefaultAppBar(),
      body: Container(
        color: Color(0xFFF2F3F6),
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: achados.length,
          itemBuilder: (context, index) {
            var img = achados[index].imagens.length!=0? achados[index].imagens[0].imagem:"1562291815.jpg";
            var pessoaNome = achados[index].utilizador!= null? achados[index].utilizador.nome:" nome ";
            return cardItem(context, achados[index].descricao,img, achados[index].createdAt,achados[index].localizacao,pessoaNome, achados[index]);
          },
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('PESQUISE NO NDOSANGA'),
              decoration: BoxDecoration(color: Colors.white),
            ),
            ListTile(
              title: Text('Perdidos'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Achados'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}

Widget cardItem(BuildContext context, String descricao, String imagem,
    DateTime createdAt, Localizacao localizacao, String nome, Achado achado) {
  //var dataAtual = DateTime.now();
  return Card(
    child: Column(
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(""),
          ),
          title: Text(nome),
          subtitle: Text(createdAt.toString()),
          trailing: Icon(Icons.more_vert),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              Text(descricao),
              Text(localizacao.comuna.municipio.provincia.designacao+"/"+localizacao.comuna.municipio.designacao+"/"+localizacao.comuna.designacao),
            ],
          ),
        ),
        Container(
          height: 400.0,
          width: 500.0,
          child: FittedBox(
            fit: BoxFit.fill,
            child: (Image.network(
                "http://192.168.8.100:8000/storage/achados/" + imagem)),
          ),
        ),
        ButtonTheme.bar(
          child: ButtonBar(
            children: <Widget>[
              FlatButton(
                child: Text('Detalhes'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Detalhes(achado: achado)),
                  );
                },
              ),
              FlatButton(
                child: Icon(Icons.share),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
