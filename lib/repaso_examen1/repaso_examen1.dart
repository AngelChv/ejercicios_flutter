import 'package:ejercicios_flutter/repaso_examen1/pages/main_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const RepasoApp());

class RepasoApp extends StatelessWidget {
  const RepasoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: const MainPage(),
    );
  }
}