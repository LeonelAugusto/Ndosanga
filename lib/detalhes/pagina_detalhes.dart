import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:ndosanga/models/achados_model.dart';
import 'package:ndosanga/paginas/pagina_achados.dart';

class Detalhes extends StatefulWidget {
  Detalhes({@required this.achado}) : super();

  final String title = "Detalhes";

  final Achado achado;

  @override
 DetalhesState createState() => DetalhesState(achado);
}

class DetalhesState extends State<Detalhes> {

  Achado achado;
  DetalhesState (Achado achado){
    this.achado=achado;
     int i = 0;

    //adiciona imagem no slid 
     for (var item in this.achado.imagens){
         this.imgList.insert(i, "http://192.168.8.100:8000/storage/achados/"+item.imagem);
         i++;
      }
      //Define-se uma imagem default caso o achado nao tenha imagem
      //Nota: Deve-se trocar a imagem default
     if(this.achado.imagens.length==0){
       this.imgList.insert(0, "http://192.168.8.100:8000/storage/achados/"+"1562291815.jpg");
     }
  }
  CarouselSlider carouselSlider;
  int _current = 0;
  List imgList = []; 

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.achado.pessoa!=null?widget.achado.pessoa.nome:"Sem nome"),
      ),
      body: SingleChildScrollView(
        child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
             carouselSlider = CarouselSlider(
              height: 400.0,
              initialPage: 0,
              enlargeCenterPage: true,
              autoPlay: true,
              reverse: false,
              enableInfiniteScroll: true,
              autoPlayInterval: Duration(seconds: 2),
              autoPlayAnimationDuration: Duration(milliseconds: 2000),
              pauseAutoPlayOnTouch: Duration(seconds: 10),
              scrollDirection: Axis.horizontal,
              onPageChanged: (index) {
                setState(() {
                  _current = index;
                });
              },
              items: imgList.map((imgUrl) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 10.0),
                      decoration: BoxDecoration(
                        color: Colors.transparent
                      ),
                      child: Image.network(
                        imgUrl,
                        fit: BoxFit.fill,
                      ),
                    );
                  },
                );
              }).toList(),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: map<Widget>(imgList, (index, url) {
                return Container(
                  width: 10.0,
                  height: 10.0,
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _current == index ? Colors.redAccent : Colors.green,
                  ),
                );
              }),
            ),
            SizedBox(
              height: 2.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                OutlineButton(
                  onPressed: goToPrevious,
                  child: Text("<"),
                ),
                OutlineButton(
                  onPressed: goToNext,
                  child: Text(">"),
                ),
              ],
            ),
             SizedBox(
               height: 10.0,
             ),
             Text("DESCRIÇÃO",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                          fontSize: 20,
                        ),
                  ),
            SizedBox(
              height: 10.0,
            ),    
            Text(widget.achado.descricao),
            SizedBox(
              height: 10.0,
            ),
            Text(widget.achado.localizacao.comuna.municipio.provincia.designacao+"/"
                    +widget.achado.localizacao.comuna.municipio.designacao+"/"
                    +widget.achado.localizacao.comuna.designacao
                    ),

                RaisedButton(onPressed: () {},)
          ],
        ),
       ),
      ),
    );
  }

  goToPrevious() {
    carouselSlider.previousPage(
        duration: Duration(milliseconds: 300), curve: Curves.ease);
  }

  goToNext() {
    carouselSlider.nextPage(
        duration: Duration(milliseconds: 300), curve: Curves.decelerate);
  }
}
