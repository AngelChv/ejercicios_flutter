import 'package:flutter/material.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Bienvenida",
      home: Bienvenida(),
    );
  }
}

class Bienvenida extends StatelessWidget {
  const Bienvenida({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Bienvenida"),),
      body: SingleChildScrollView(
        child: Column(
          children: List.generate(
            20,
            (index) => Container(
              padding: const EdgeInsets.all(16),
              alignment: Alignment.center,
              child: Text("Texto $index"),
            ),
          ),
        ),
      ),
    );
  }
}