import 'package:flutter/material.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: const ColorScheme.dark()
      ),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget{
  const Home({super.key});

  @override
  State<StatefulWidget> createState() => _Home();
}

class _Home extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Título"),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.secondary,
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              "Título",
              style: TextStyle(
                  backgroundColor: Theme.of(context).colorScheme.primary
              ),
            ),
            const ElevatedButton(onPressed: null, child: Text("Botón")),
          ],
        ),
      )
    );
  }

}