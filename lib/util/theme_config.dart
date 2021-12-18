import 'package:flutter/material.dart';

class ThemeConfig {
  static final ThemeData theme = ThemeData(
    primaryColor: Colors.deepOrangeAccent,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
      actionsIconTheme: IconThemeData(
        color: Colors.deepOrangeAccent,
      ),
      centerTitle: true,
      elevation: 1,
      titleTextStyle: TextStyle(
        color: Colors.deepOrangeAccent,
        letterSpacing: 1.5,
        fontFamily: 'RedhatMono',
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
