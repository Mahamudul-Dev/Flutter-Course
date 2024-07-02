import 'package:flutter/material.dart';
import 'package:flutter_practice/screens/covid_screen.dart';
import 'package:flutter_practice/screens/screen_wrapper.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Practice Flutter',
      routes: {
        '/': (context)=> ScreenWrapper(),
        '/covid': (context)=> const CovidScreen()
      },
        initialRoute: '/'
    );
  }
}
