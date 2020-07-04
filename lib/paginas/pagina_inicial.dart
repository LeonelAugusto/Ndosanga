import 'package:flutter/material.dart';
import 'package:ndosanga/paginas/app_bar/default_app_bar.dart';
import 'package:ndosanga/paginas/pagina_achados.dart';
import 'package:ndosanga/paginas/pagina_perdidos.dart';


class PaginaInicial extends StatefulWidget {

@override
_PaginaInicialState createState()=> new _PaginaInicialState(); 

}

class _PaginaInicialState extends State<PaginaInicial> with 
       SingleTickerProviderStateMixin {

  final String texto;
  final bool selecciona;
  final GestureTapCallback onTap;
  var _currentIndex = 0;
  List categoria = new List();
  List _itens = new List();
  var SelecaoCategoria = 0;


  _PaginaInicialState({Key key, this.texto, this.selecciona, this.onTap});

  TabController _tabController;

         @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, initialIndex: 1, length: 2);
  }

  void onTabTapped(int index) {
    setState(() {
     _currentIndex = index;
    });
  }
       
  /*  Widget _getListaBotao() {
    var list = new ListView.builder();
    itemCount: _itens.length,
    padding: new EdgeInsets.only(top: 5.0);
    itemBuilder: (context, idex){
      return 
    }
     
    return null;
  }*/

  @override
  Widget build(BuildContext context){
   return DefaultTabController(
     length: 2,
      child: Scaffold(
      appBar: DefaultAppBar(),
      body: 
       TabBarView(
        controller: _tabController,
        children: <Widget>[
          new PaginaAchado(),
          new PaginaPerdido(),
        ],
      ),

        bottomNavigationBar: new BottomNavigationBar(
       // onTap: onTabTapped,
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          new BottomNavigationBarItem(
            icon: const Icon(Icons.people),
            title: Text('PERDIDOS'),
            backgroundColor: Colors.indigo
          ),
          new BottomNavigationBarItem(
            icon: const Icon(Icons.people),
            title: Text('ACHADOS'),
            backgroundColor: Colors.indigo
          ),
        ],
      ),
      floatingActionButton: new FloatingActionButton(
        backgroundColor: Theme.of(context).accentColor,
        child: Icon(Icons.add, color: Colors.white,), 
        onPressed: ()=>print("Nova publicacão"),
      ),
     ), 
   );
  }
}