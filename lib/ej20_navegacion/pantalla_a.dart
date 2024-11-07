import 'package:flutter/material.dart';

class PantallaA extends StatelessWidget {
  const PantallaA({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => Navigator.pushNamed(context, "/PantallaB"),
      child: const Text("Ir a PantallaB"),
    );
  }
}