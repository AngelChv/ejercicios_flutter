import 'package:ejercicios_flutter/ej30_tab_bar/home.dart';
import 'package:ejercicios_flutter/ej30_tab_bar/profile.dart';
import 'package:ejercicios_flutter/ej30_tab_bar/settings.dart';
import 'package:flutter/material.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<StatefulWidget> createState() => _Navigation();
}

class _Navigation extends State<Navigation> {
  static const List<Tab> tabs = [
    Tab(
      icon: Icon(Icons.home),
      text: "Home",
    ),
    Tab(
      icon: Icon(Icons.person),
      text: "Profile",
    ),
    Tab(
      icon: Icon(Icons.settings),
      text: "Settings",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Title"),
          // Se puede añadir el TapBar en el AppBar o en el bottomNavigationBar
          // del Scaffold.
          /*bottom: const TabBar(
            tabs: tabs,
          ),*/
        ),
        body: const TabBarView(
          children: [
            Home(),
            Profile(),
            Settings(),
          ],
        ),
        bottomNavigationBar: AppBar(
          title: const Text("Title"),
          bottom: const TabBar(
            tabs: tabs,
          ),
        ),
      ),
    );
  }
}
