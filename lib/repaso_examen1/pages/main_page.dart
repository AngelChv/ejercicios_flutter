import 'package:ejercicios_flutter/repaso_examen1/views/profile.dart';
import 'package:ejercicios_flutter/repaso_examen1/views/settings.dart';
import 'package:ejercicios_flutter/repaso_examen1/views/taskPage.dart';
import 'package:flutter/material.dart';

import '../model/task.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<StatefulWidget> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  static final List<Task> _tasks = [
    Task(name: "Tarea 1"),
    Task(name: "Tarea 2"),
  ];
  int _selectedIndex = 0;
  static final _views = [
    TaskPage(tasks: _tasks,),
    const Profile(),
    const Settings(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Repaso examen"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      floatingActionButton: (_selectedIndex == 0)
          ? FloatingActionButton(onPressed: () {
              setState(() {
                _tasks.add(Task(
                  name: "Task ${_views.length}",
                ));
                _views[0] = TaskPage(tasks: _tasks);
              });
            })
          : null,
      bottomNavigationBar: NavigationBar(
        selectedIndex: _selectedIndex,
        onDestinationSelected: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.task),
            label: "Tareas",
          ),
          NavigationDestination(
            icon: Icon(Icons.person),
            label: "Perfil",
          ),
          NavigationDestination(
            icon: Icon(Icons.settings),
            label: "Configuración",
          ),
        ],
      ),
      body: _views[_selectedIndex],
    );
  }
}
