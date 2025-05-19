import 'package:flutter/material.dart';
import 'routes.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'VohuCode',
      theme: ThemeData(
        textSelectionTheme: TextSelectionThemeData(
          selectionHandleColor: Colors.amber,
          cursorColor: Colors.black,
          selectionColor: Colors.amber.withValues(alpha: 0.5),
        ),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: Routes.routes,
    );
  }
}
