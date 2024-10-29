import 'package:flutter/material.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Tarjeta",
      theme:  ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurpleAccent),
        useMaterial3: true,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<StatefulWidget> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tarjeta"),
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(8.0),
          padding: const EdgeInsets.all(8),
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary,
            borderRadius: BorderRadius.circular(20),
            border: Border(
              left: BorderSide(
                width: 10,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
              right: BorderSide(
                width: 10,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
              top: BorderSide(
                width: 10,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
              bottom: BorderSide(
                width: 10,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            )
          ),
          child: Card(
            margin: const EdgeInsets.all(8),
            color: Theme.of(context).colorScheme.inversePrimary,
            borderOnForeground: true,
            surfaceTintColor: Theme.of(context).colorScheme.primary,
            elevation: 10,
            child: const Text("Hola", textAlign: TextAlign.center,),
          ),
        ),
      )
    );
  }

}