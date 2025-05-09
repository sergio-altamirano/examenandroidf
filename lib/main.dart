import 'package:flutter/material.dart';
import 'package:examen16/inicial.dart';
import 'package:examen16/pagina2.dart';

void main() => runApp(Actividad());

class Actividad extends StatelessWidget {
  const Actividad({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Widgets',
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => const MyApp(),

        '/pantalla2': (context) => const Pagina2(),
      },
    );
  }
}
