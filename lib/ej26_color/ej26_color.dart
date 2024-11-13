import 'package:flutter/material.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<StatefulWidget> createState() => _Home();
}

class _Home extends State<Home> {
  late Color _color = Colors.grey;

  void _changeColor() {
    Navigator.push(
            context, MaterialPageRoute(builder: (context) => const ColorPage()))
        .then((value) {
      setState(() {
        _color = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(64),
          color: _color,
          child: IconButton(
            onPressed: () {
              _changeColor();
            },
            icon: const Icon(
              Icons.edit,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

class ColorPage extends StatelessWidget {
  const ColorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () => Navigator.pop(context, Colors.red),
              child: const Text("Rojo"),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pop(context, Colors.blue),
              child: const Text("Azul"),
            ),
          ],
        ),
      ),
    );
  }
}
