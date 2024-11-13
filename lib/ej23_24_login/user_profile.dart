import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});
  // De esta manera se haría con un push normal.
  // final String userName;
  // const UserProfile({super.key, required this.userName});

  @override
  Widget build(BuildContext context) {
    // Pero al ser un pushNamed, se tiene que hacer de la siguiente manera:
    // Hay que tener en cuenta que se debe de hacer dentro del build para
    // tener el context.
    final userName = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: Text(userName),
      ),
      body: Center(
          child: Column(
        children: [
          Text("Bienvenido $userName"),
          // Si volvemos a la pestaña anterior con un pop si podemos devolver
          // datos, pero para devolver datos con el botón por defecto
          // del appbar hay que hacerlo de otra manera.
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context, userName);
            },
            child: const Text("Volver"),
          ),
        ],
      )),
    );
  }
}
