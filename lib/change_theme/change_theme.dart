import 'package:ejercicios_flutter/change_theme/theme_home.dart';
import 'package:flutter/material.dart';

void main() => runApp(const App());

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<StatefulWidget> createState() => AppState();
}

class AppState extends State<App> {
  ThemeData themeDate = ThemeData.dark();

  void changeTheme(bool darkMode) {
    setState(() {
      themeDate = (darkMode)
          ? ThemeData.dark()
          : ThemeData.light();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: themeDate,
      home: const ThemeHome(),
    );
  }
}