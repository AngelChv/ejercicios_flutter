import 'package:ejercicios_flutter/ej20_navegacion/pantalla_a.dart';
import 'package:ejercicios_flutter/ej20_navegacion/pantalla_b.dart';
import 'package:flutter/material.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Navegacion",
      routes: {
        "/PantallaA": (context) => const PantallaA(),
        "/PantallaB": (context) => const PantallaB(),
      },
      home: const PantallaA(),
    );
  }
}