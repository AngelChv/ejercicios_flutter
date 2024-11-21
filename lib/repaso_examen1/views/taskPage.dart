import 'package:ejercicios_flutter/repaso_examen1/model/task.dart';
import 'package:flutter/material.dart';

class TaskPage extends StatefulWidget {
  final List<Task> tasks;
  const TaskPage({super.key, required this.tasks});

  @override
  State<StatefulWidget> createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: widget.tasks.length,
      itemBuilder: (context, index) {
        return widget.tasks[index];
      },
      separatorBuilder: (context, index) => const Divider(),
    );
  }
}
