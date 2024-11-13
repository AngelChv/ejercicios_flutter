import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:loading_animation_widget/loading_animation_widget.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<StatefulWidget> createState() => _Home();
}

class _Home extends State<Home> {
  List jsonResponse = [];

  @override
  void initState() {
    getRes(Uri.https('jsonplaceholder.typicode.com', '/todos/'));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("ListView con datos de JSONPlaceHolder"),
        ),
        body: jsonResponse.isEmpty
            ? Center(
          child: LoadingAnimationWidget.discreteCircle(
            color: Colors.black,
            secondRingColor: Colors.red,
            thirdRingColor: Colors.blue,
            size: 200,
          ),
        )
            : ListView.builder(
            padding: const EdgeInsets.symmetric(
              horizontal: 64,
              vertical: 16,
            ),
            itemCount: jsonResponse.length,
            itemBuilder: (context, index) {
              return Card(
                margin: const EdgeInsets.all(16),
                child: ListTile(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Detalles(
                              data: jsonResponse[index],
                            )
                        )
                    );
                  },
                  title: Text(jsonResponse[index]["title"]),
                  subtitle: Text(jsonResponse[index]["id"].toString()),
                ),
              );
            }));
  }

  Future<void> getRes(Uri uri) async {
    final response = await http.get(uri);
    if (response.statusCode == 200) {
      setState(() {
        jsonResponse = json.decode(response.body);
      });
    } else {
      throw Exception("Error: status code = ${response.statusCode}");
    }
  }
}

class Detalles extends StatelessWidget {
  final Map data;

  const Detalles({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Detalles"),),
      body: Center(
        child: SizedBox(
          width: 400,
          child: Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  title: Text("Id: ${data["id"]}"),
                ),
                ListTile(
                  title: Text("User id: ${data["userId"]}"),
                ),
                ListTile(
                  title: Text("Título: ${data["title"]}"),
                ),
                ListTile(
                  title: Text("Completado: ${data["completed"]}"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}