import 'package:flutter/widgets.dart';
import 'package:flutter_practice/screens/calender_screen.dart';
import 'package:flutter_practice/screens/chat_screen.dart';
import 'package:flutter_practice/screens/home_screen.dart';
import 'package:flutter_practice/screens/profile_screen.dart';

class ScreenController {
  int selectedScreen = 0;
  final List<Widget> screens = [
    HomeScreen(),
    CalenderScreen(),
    ChatScreen(),
    ProfileScreen()
  ];

  void changeScreen(int index){
    selectedScreen = index;
  }


}