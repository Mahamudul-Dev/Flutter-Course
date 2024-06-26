import 'package:flutter/material.dart';
import 'package:flutter_practice/screens/home_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Practice Flutter',
      home: HomeScreen(),
    );
  }
}
