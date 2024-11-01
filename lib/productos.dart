import 'package:flutter/material.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Productos",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
        appBarTheme: AppBarTheme(
            color: Theme.of(context).colorScheme.primary
        ),
      ),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<StatefulWidget> createState() => _Home();
}

class _Home extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Productos"),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: ListView(
        children: [
          Producto(),
          Producto(),
        ],
      ),
    );
  }
}

class Producto extends StatelessWidget {
  const Producto({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // todo pedir el margen y el padding en el constructor.
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(8),
      child: Row(
        children: [
          Image.asset("assets/paisaje.jpg",
            width: 100,
          ), //todo
          const Column(
            children: [
              Text("Nombre"), // todo pedir en el constructor
              Text("Precio"),
            ],
          )
        ],
      ),
    );
  }
}