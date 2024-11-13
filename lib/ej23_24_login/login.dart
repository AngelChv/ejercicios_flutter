import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<StatefulWidget> createState() => _Login();
}

class _Login extends State<Login> {
  // Clave global que lo identifica inequívocamente.
  // Permite validar el formulario.
  final _loginKey = GlobalKey<FormState>();

  // Se usa para reclamar el valor actual del campo "Nombre".
  // Solo se asigna a un campo del formulario.
  final nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _loginKey,
        child: Column(
          children: [
            // Uso TextFormField en lugar de TexField debido a que el segundo
            // es mas simple, se puede usar sin estar dentro de un formulario.
            // Y TextFormField es mas completo, extiende de TextField, permitiendo
            // validaciones.
            TextFormField(
              controller: nameController,
              decoration: const InputDecoration(
                  hintText: "Nombre"
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Introduzca su nombre";
                }
                return null;
              },
            ),
            // todo añadir contraseña.
            ElevatedButton(
              onPressed: () {
                // A través de la clave, accedemos al estado actual y lo validamos.
                // La ! evita que se ejecute si lo anterior es nulo.
                if (_loginKey.currentState!.validate()) {
                  // Mensaje informativo.
                  ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Enviando formulario..."))
                  );
                  // Vuelve a la pantalla anterior y devuelve el nombre.
                  Navigator.pop(context, nameController.text);
                }
              },
              child: const Text("Iniciar sesión"),
            )
          ],
        ),
      ),
    );
  }
}