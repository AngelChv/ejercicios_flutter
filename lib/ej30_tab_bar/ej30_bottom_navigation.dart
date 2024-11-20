import 'package:ejercicios_flutter/ej30_tab_bar/ej30_navigation.dart';
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