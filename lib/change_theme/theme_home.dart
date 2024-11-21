import 'package:ejercicios_flutter/change_theme/theme_settings.dart';
import 'package:flutter/material.dart';
import 'package:ejercicios_flutter/change_theme/change_theme.dart';

class ThemeHome extends StatefulWidget {
  const ThemeHome({super.key});

  @override
  State<StatefulWidget> createState() => _ThemeHome();
}

class _ThemeHome extends State<ThemeHome> {
  late bool _darkMode;
  @override
  Widget build(BuildContext context) {
    final appState = context.findRootAncestorStateOfType<AppState>();
    _darkMode = appState?.themeDate == ThemeData.dark();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        backgroundColor: Theme
            .of(context)
            .primaryColor,
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              "Título",
              style: Theme
                  .of(context)
                  .textTheme
                  .bodyLarge,
            ),
            Container(
              height: 100,
              width: 200,
              color: Theme
                  .of(context)
                  .colorScheme
                  .secondary,
            ),
            FilledButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ThemeSettings())
                );
              },
              child: const Text("Configuración"),
            )
          ],
        ),
      ),
    );
  }
}
