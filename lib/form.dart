import 'package:flutter/material.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    const appTitle = "Formulario";
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
        ),
        body: const Padding(
          padding: EdgeInsets.all(30),
          child: MyForm(),
        ),
      ),
    );
  }
}



class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  State<StatefulWidget> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final _formKey = GlobalKey<FormState>(); // Importante!

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            decoration: const InputDecoration(
              hintText: "Nombre",
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Introduzca su nombre";
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
              hintText: "Correo",
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Introduzca su correo";
              }
              return null;
            },
          ),
          TextFormField(
            obscureText: true,
            enableSuggestions: false,
            autocorrect: false,
            decoration: const InputDecoration(
              hintText: "Contraseña",
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Introduzca su contraseña";
              }
              return null;
            },
          ),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Enviando formulario..."))
                );
              }
            },
            child: const Text("Enviar"),
          ),
        ],
      ),
    );
  }

}