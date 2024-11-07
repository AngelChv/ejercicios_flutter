import 'package:ejercicios_flutter/ej21_datos_entre_pantallas/producto.dart';
import 'package:flutter/material.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Datos entre pantallas",
      home: Home("Home"),
    );
  }
}

class Home extends StatefulWidget {
  final String title;

  const Home(this.title, {super.key});

  @override
  State<StatefulWidget> createState() => _Home();
}

class _Home extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: const Center(
          child: Column(
            children: [
              Product("Pera", 12.2),
              Product("Manzana", 6.4),
            ],
          ),
        ));
  }
}
