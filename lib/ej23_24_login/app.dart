import 'package:ejercicios_flutter/ej23_24_login/user_profile.dart';
import 'package:flutter/material.dart';
import 'package:ejercicios_flutter/ej23_24_login/home.dart';
import 'package:ejercicios_flutter/ej23_24_login/login.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Ejercicio 23",
      routes: {
        "/login": (context) => const Login(),
        "/user_profile": (context) => const UserProfile(),
      },
      home: const Home(),
    );
  }
}