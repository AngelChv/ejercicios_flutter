import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ClickIndicator(),
    );
  }
}

class ClickIndicator extends StatefulWidget {
  const ClickIndicator({super.key});

  @override
  State<StatefulWidget> createState() => _ClickIndicator();
}

class _ClickIndicator extends State<ClickIndicator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}