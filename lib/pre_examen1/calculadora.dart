import 'detalles.dart';
import 'package:flutter/material.dart';

class Calculadora extends StatefulWidget {
  const Calculadora({super.key});

  @override
  State<StatefulWidget> createState() => _Calculadora();
}

class _Calculadora extends State<Calculadora> {
  double _kg = 30;
  double _m = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculadora IMC"),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: Column(
            children: [
              // Peso
              Container(
                color: Colors.grey,
                padding: const EdgeInsets.all(16),
                child: Text(
                  "${_kg.round().toString()} KG",
                  style: Theme.of(context).textTheme.displayLarge,
                ),
              ),
              Slider(
                value: _kg,
                onChanged: (value) {
                  setState(() => _kg = value);
                },
                min: 30,
                max: 200,
              ),

              // Altura
              Container(
                color: Colors.grey,
                padding: const EdgeInsets.all(16),
                child: Text(
                  "${((_m * 100).truncate() / 100).toString()} m",
                  style: Theme.of(context).textTheme.displayLarge,
                ),
              ),
              Slider(
                value: _m,
                onChanged: (value) {
                  setState(() => _m = value);
                },
                min: 1,
                max: 2.5,
              ),

              // Calcular:
              FilledButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Detalles(
                    weight: _kg,
                    height: _m,
                  ))
                ),
                child: const Text("CALCULAR"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
