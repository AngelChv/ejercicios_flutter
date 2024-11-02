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
          Producto(
            nombre: const Text("Producto 1"),
            precio: const Text("6,7"),
            image: Image.asset("assets/paisaje.jpg", width: 150,),
          ),
          Producto(
            nombre: const Text("Producto 2"),
            precio: const Text("10,3"),
            image: Image.asset("assets/paisaje.jpg", width: 150,),
            padding: const EdgeInsets.all(16),
            margin: const EdgeInsets.all(16),
          ),
          Producto(
            nombre: const Text("Producto 1"),
            precio: const Text("6,7"),
            image: Image.asset("assets/paisaje.jpg", width: 250,),
          ),
          Producto(
            nombre: const Text("Producto 2"),
            precio: const Text("10,3"),
            image: Image.asset("assets/paisaje.jpg", width: 350,),
            padding: const EdgeInsets.all(16),
            margin: const EdgeInsets.all(16),
          ),
          Producto(
            nombre: const Text("Producto 1"),
            precio: const Text("6,7"),
            image: Image.asset("assets/paisaje.jpg", width: 150,),
          ),
          Producto(
            nombre: const Text("Producto 2"),
            precio: const Text("10,3"),
            image: Image.asset("assets/paisaje.jpg", width: 150,),
            padding: const EdgeInsets.all(16),
            margin: const EdgeInsets.all(16),
          ),
          Producto(
            nombre: const Text("Producto 1"),
            precio: const Text("6,7"),
            image: Image.asset("assets/paisaje.jpg", width: 250,),
          ),
          Producto(
            nombre: const Text("Producto 2"),
            precio: const Text("10,3"),
            image: Image.asset("assets/paisaje.jpg", width: 350,),
            padding: const EdgeInsets.all(16),
            margin: const EdgeInsets.all(16),
          ),
        ],
      ),
    );
  }
}

class Producto extends StatelessWidget {
  final Text nombre;
  final Text precio;
  final Image image;
  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry margin;
  const Producto({super.key, required this.nombre, required this.precio,
    required this.image, this.padding = const EdgeInsets.all(8),
    this.margin = const EdgeInsets.all(8)});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.inversePrimary,
        border: Border.all(width: 1, color: Colors.grey),
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 3,
            offset: Offset(2, 2)
          ),
        ]
      ),
      child: Row(
        children: [
          image,
          Padding(
            padding: padding,
            child:
              Column(
                children: [
                  nombre,
                  precio,
                ],
              ),
          ),
        ],
      ),
    );
  }
}