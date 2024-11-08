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
  // List<Padding> list = [];
  List jsonResponse = [];

/*  void _initialize(List<Map<String, dynamic>> data) {
    setState(() {
      list = getResponseAsList(data);
    });
  }*/

  @override
  void initState() {
    getRes(Uri.https('jsonplaceholder.typicode.com', '/todos/'));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
/*
    getResponse(Uri.https('jsonplaceholder.typicode.com', '/todos/'))
        .then((data) {
      _initialize(data);
    });
*/

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
                itemCount: jsonResponse.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
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

/*List<Padding> getResponseAsList(List<Map<String, dynamic>> responseList) {
  List<Padding> list = [];
  for (var item in responseList) {
    list.add(
      Padding(
          padding: const EdgeInsets.all(32),
          child: Row(
            children: [
              Expanded(
                child: Text("UserId: ${item["userId"]}"),
              ),
              Expanded(
                child: Text("id: ${item["id"]}"),
              ),
              Expanded(
                flex: 4,
                child: Text("title: ${item["title"]}"),
              ),
              Expanded(
                child: Text("completed: ${item["completed"]}"),
              ),
            ],
          )),
    );
  }
  return list;
}*/

Future<List<Map<String, dynamic>>> getResponse(Uri uri) async {
  List<Map<String, dynamic>> jsonResponse = [];
  var response = await http.get(uri);
  if (response.statusCode == 200) {
    for (Map<String, dynamic> i in jsonDecode(response.body) as List<dynamic>) {
      jsonResponse.add(i);
    }
  } else {
    throw Exception("Error: status code = ${response.statusCode}");
  }

  return jsonResponse;
}
