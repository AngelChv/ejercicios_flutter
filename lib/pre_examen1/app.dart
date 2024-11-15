import 'package:ejercicios_flutter/pre_examen1/calculadora.dart';
import 'package:flutter/material.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Calculadora IMC",
      theme: ThemeData(
        primarySwatch: Colors.purple,
        sliderTheme: const SliderThemeData(
          thumbColor: Colors.black,
          activeTrackColor: Colors.black,
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: Theme.of(context).colorScheme.primary,
          titleTextStyle: const TextStyle(
            color: Colors.white,
            fontSize: 30,
          ),
        ),
      ),
      home: const Calculadora(),
    );
  }
}
