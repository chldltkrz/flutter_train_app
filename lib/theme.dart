import 'package:flutter/material.dart';

final lightTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      brightness: Brightness.light,
      seedColor: Colors.purple,
    ),
    dividerColor: Colors.grey[300],
    highlightColor: Colors.purpleAccent,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(Colors.purple),
        foregroundColor: WidgetStatePropertyAll(Colors.white),
      ),
    ),
    scaffoldBackgroundColor: Colors.black38);

final darkTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(
    brightness: Brightness.dark,
    seedColor: Colors.purple,
  ),
  dividerColor: Colors.grey[300],
  highlightColor: Colors.purpleAccent,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: WidgetStatePropertyAll(Colors.purple),
      foregroundColor: WidgetStatePropertyAll(Colors.black),
    ),
  ),
);
