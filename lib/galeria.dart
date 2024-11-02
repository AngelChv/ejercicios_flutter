import 'package:flutter/material.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    const title = "Galería";
    return const MaterialApp(
      title: title,
      home: Galeria(title: title,),
    );
  }
}

class Galeria extends StatefulWidget {
  const Galeria({super.key, required this.title});
  final String title;

  @override
  State<StatefulWidget> createState() => _GaleriaState();
}

class _GaleriaState extends State<Galeria> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: GridView.count(
        crossAxisCount: 5,
        padding: const EdgeInsets.all(16),
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
        children: const [
          Imagen(path: "assets/paisaje.jpg"),
          Imagen(path: "assets/paisaje.jpg"),
          Imagen(path: "assets/paisaje.jpg"),
          Imagen(path: "assets/paisaje.jpg"),
          Imagen(path: "assets/paisaje.jpg"),
          Imagen(path: "assets/paisaje.jpg"),
          Imagen(path: "assets/paisaje.jpg"),
          Imagen(path: "assets/paisaje.jpg"),
          Imagen(path: "assets/paisaje.jpg"),
          Imagen(path: "assets/paisaje.jpg"),
          Imagen(path: "assets/paisaje.jpg"),
          Imagen(path: "assets/paisaje.jpg"),
          Imagen(path: "assets/paisaje.jpg"),
          Imagen(path: "assets/paisaje.jpg"),
          Imagen(path: "assets/paisaje.jpg"),
          Imagen(path: "assets/paisaje.jpg"),
          Imagen(path: "assets/paisaje.jpg"),
          Imagen(path: "assets/paisaje.jpg"),
          Imagen(path: "assets/paisaje.jpg"),
          Imagen(path: "assets/paisaje.jpg"),
          Imagen(path: "assets/paisaje.jpg"),
        ],
      ),
    );
  }
}

class Imagen extends StatelessWidget {
  const Imagen({super.key, required this.path});
  final String path;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        image: const DecorationImage(
          image: AssetImage("assets/paisaje.jpg"),
          fit: BoxFit.cover,
        )
      ),
    );
  }
}