import 'package:flutter/material.dart';

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
  Widget _page = const Profile();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Drawer"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(child: Text("Menu")),
            ListTile(
              title: const Text("Settings"),
              subtitle: const Text("Go to settings"),
              onTap: () {
                setState(() {
                  _page = const Settings();
                });
              },
            ),
            ListTile(
              title: const Text("Profile"),
              subtitle: const Text("Go to profile"),
              onTap: () {
                setState(() {
                  _page = const Profile();
                });
              },
            ),
          ],
        ),
      ),
      body: _page,
    );
  }
}

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Profile")
    );
  }
}

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Text("Settings")
    );
  }
}
