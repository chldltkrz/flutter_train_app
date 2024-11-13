import 'package:flutter/material.dart';
import 'package:flutter_train_app/pages/homepage/homepage.dart';
import 'package:flutter_train_app/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Main widget of the app
  // initializing HomePage() as the home page
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: lightTheme,
      darkTheme: darkTheme,
      home: Homepage(),
    );
  }
}
