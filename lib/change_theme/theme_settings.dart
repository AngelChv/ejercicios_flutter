import 'package:ejercicios_flutter/change_theme/change_theme.dart';
import 'package:flutter/material.dart';

class ThemeSettings extends StatefulWidget {
  const ThemeSettings({super.key});

  @override
  State<StatefulWidget> createState() => _ThemeSettingsState();
}

class _ThemeSettingsState extends State<ThemeSettings> {
  late bool _darkMode;
  @override
  Widget build(BuildContext context) {
    final appState = context.findRootAncestorStateOfType<AppState>();
    _darkMode = appState?.themeDate == ThemeData.dark();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
      ),
      body: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text("Modo oscuro"),
            Switch(
              value: _darkMode,
              onChanged: (value) {
                setState(() {
                  _darkMode = value;
                });
                appState?.changeTheme(_darkMode);
              },
            )
          ],
        ),
      ),
    );
  }
}
