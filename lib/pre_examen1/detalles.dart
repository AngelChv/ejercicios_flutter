import 'package:flutter/material.dart';

class Detalles extends StatelessWidget {
  final double weight;
  final double height;

  const Detalles({super.key, required this.weight, required this.height});

  double getImc({required double weight, required double height}) {
    return weight / (height * height);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculadora IMC"),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              color: Colors.grey,
              padding: const EdgeInsets.all(16),
              margin: const EdgeInsets.all(64),
              child: Column(
                children: [
                  Text("${getImc(weight: weight, height: height)}",
                    style: Theme.of(context).textTheme.displayLarge,
                  ),
                  Text("",
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(64),
              child: FilledButton(
                onPressed: () => Navigator.pop(context),
                child: const Text("NUEVO IMC"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
