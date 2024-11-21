import 'package:flutter/material.dart';

class Task extends StatefulWidget {
  bool complete;
  final String name;

  Task({super.key, this.complete = false, required this.name});

  @override
  State<StatefulWidget> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Checkbox(
        value: widget.complete,
        onChanged: (value) {
          setState(() {
            widget.complete = value!;
          });
        },
      ),
      title: Text(widget.name),
      trailing: IconButton(
        onPressed: () {},
        icon: const Icon(Icons.delete),
      ),
    );
  }
}
