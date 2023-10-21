import 'package:flutter/material.dart';
import 'package:flutter_clock/screens/home_screen.dart';
import 'package:flutter_clock/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Analog Clock',
      theme: themeData(context),
      darkTheme: darkThemeData(context),
      themeMode: ThemeMode.light,
      home: const HomeScreen(),
    );
  }
}
