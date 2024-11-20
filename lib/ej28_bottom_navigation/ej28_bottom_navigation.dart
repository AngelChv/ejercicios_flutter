import 'package:ejercicios_flutter/ej28_bottom_navigation/ej28_navigator.dart';
import 'package:flutter/material.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Bottom Navigation",
      home: Navigation(),
    );
  }
}