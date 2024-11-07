import 'package:ejercicios_flutter/ej21_datos_entre_pantallas/producto.dart';
import 'package:flutter/material.dart';

class Detalles extends StatefulWidget {
  final String title;
  final Product product;

  const Detalles({super.key, required this.title, required this.product});

  @override
  State<StatefulWidget> createState() => _Detalles();
}

class _Detalles extends State<Detalles> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Card(
              child: Padding(
            padding: const EdgeInsets.all(32),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(widget.product.name),
                Text(widget.product.price.toStringAsFixed(2)),
              ],
            ),
          )),
        ));
  }
}
