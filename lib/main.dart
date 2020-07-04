import 'package:flutter/material.dart';
import 'package:ndosanga/detalhes/pagina_detalhes.dart';
import 'package:ndosanga/paginas/pagina_achados.dart';
import 'package:ndosanga/paginas/pagina_inicial.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ndosanga',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: PaginaInicial(),
      routes: <String, WidgetBuilder>{
				'/a': (BuildContext context) => PaginaAchado(),
			});
  }
}
  