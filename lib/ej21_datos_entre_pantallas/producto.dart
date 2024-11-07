import 'package:ejercicios_flutter/ej21_datos_entre_pantallas/detalles.dart';
import 'package:flutter/material.dart';

class Product extends StatefulWidget {
  final String name;
  final double price;

  const Product(this.name, this.price, {super.key});

  @override
  State<StatefulWidget> createState() => _Product();
}

class _Product extends State<Product> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
        child: Center(
            child: ElevatedButton(
      onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  Detalles(title: widget.name, product: widget))),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: Text(widget.name),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Text(widget.price.toStringAsFixed(2)),
          ),
        ],
      ),
    )));
  }
}
