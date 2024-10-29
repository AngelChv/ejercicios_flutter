import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Stateless y stateful",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlue),
        textTheme: const TextTheme(displayMedium: TextStyle(color: Colors.amberAccent)),
        useMaterial3: true,
      ),
      home: const HomePage(title: "Home page",),
    );
  }
}

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({super.key, required this.title});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _count = 0;

  void _incrementCounter() {
    setState(() {
      _count++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _count--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title, style: Theme.of(context).textTheme.displayMedium),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Cuenta:", style: Theme.of(context).textTheme.displaySmall,),
            Text("$_count", style: Theme.of(context).textTheme.bodyLarge,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: _incrementCounter,
                  tooltip: "Incrementar",
                  child: const Icon(Icons.add_circle),
                ),
                FloatingActionButton(
                  onPressed: _decrementCounter,
                  tooltip: "Decrementar",
                  child: const Icon(Icons.exposure_minus_1),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

}