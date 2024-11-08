import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Perfil de usuario",
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text("Perfil de usuario."),
      ),
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Image.asset("assets/paisaje.jpg"),
          ),
          const Positioned(
            top: 16,
            right: 16,
            child: User(),
          ),
          const Positioned(
            top: 16,
            left: 16,
            child: EditButton(),
          ),
        ],
      ),
    );
  }
}

class User extends StatelessWidget {
  const User({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 30,
      backgroundColor: Colors.white,
      child: Icon(
          size: 40,
          Icons.person
      ),
    );
  }
}

class EditButton extends StatelessWidget {
  const EditButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      iconSize: 40,
      splashColor: Colors.red,
      highlightColor: Colors.yellow,
      hoverColor: Colors.green,
      onPressed: () => ("todo"),
      icon: const Icon(
        color: Colors.black,
        Icons.edit,
      ),
    );
  }
}