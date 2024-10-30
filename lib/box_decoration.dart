import 'package:flutter/material.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Box Decoration",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
        cardTheme: CardTheme(
          margin: const EdgeInsets.all(30),
          color: Theme.of(context).colorScheme.inversePrimary,
        ),
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
  State<StatefulWidget> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Box Decoration"),
        ),
        body: const SingleChildScrollView(
          child: Column(
            children: [
              MyCard(),
              MyCard(),
              MyCard(),
              MyCard(),
              MyCard(),
              MyCard(),
            ],
          ),
        )
    );
  }
}

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        borderRadius: const BorderRadius.all(Radius.circular(80)),
        border: Border.all(
          width: 4,
          color: Colors.black,
        )
      ),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child:  Column(
            children: [
              Text("Título", style: Theme.of(context).textTheme.titleLarge),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Image.asset("assets/paisaje.jpg"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}