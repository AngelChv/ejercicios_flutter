import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<StatefulWidget> createState() => _Home();
}

class _Home extends State<Home> {
  String user = "invitado";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text(user),
            ElevatedButton(
              // Para recibir datos se puede hacer un await y guardarlo en una
              // variable.
              // onPressed: () async {
              //   var value = await Navigator.pushNamed(context, "/login") as String;
              //   setState(() {
              //     user = value;
              //   });
              // },
              // O de esta manera:
              onPressed: () {
                Navigator.pushNamed(context, "/login").then((value) {
                  setState(() {
                    // Se puede convertir de Object? a String de dos maneras:
                    // user = value as String;
                    user = value.toString();
                  });
                });
              },
              child: const Text("Iniciar sesión"),
            ),
            ElevatedButton(
              onPressed: () {
                // Para enviar datos con una ruta nombrada se usa arguments:
                // A diferencia de la navegación manual, que lo hace a través
                // del constructor.
                Navigator.pushNamed(context, "/user_profile",
                    arguments: user)/*.then((value) {
                  setState(() {
                    // Al usar ! evito que al volver con el botón del scaffold
                    // el usuario sera nulo, pero salta una excepción que dice
                    // que value no puede ser nulo, porqué???
                    // Si realmente si puede ser nulo.
                    user = value!.toString();
                  });
                })*/;
                // Realmente esto no es necesario, ya que no necesito el nombre,
                // ya lo tengo. Sin hacerlo evito asignarlo a nulo al usar el
                // botón del scaffold.
              },
              child: const Text("Perfil de usuario"),
            ),
          ],
        ),
      ),
    );
  }
}
