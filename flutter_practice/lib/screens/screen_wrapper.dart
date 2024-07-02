import 'package:flutter/material.dart';
import 'package:flutter_practice/controllers/screen_controller.dart';

import '../utils/style.dart';

class ScreenWrapper extends StatefulWidget {
  ScreenWrapper({super.key});

  @override
  State<ScreenWrapper> createState() => _ScreenWrapperState();

  final controller = ScreenController();
}

class _ScreenWrapperState extends State<ScreenWrapper> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: widget.controller.screens[widget.controller.selectedScreen],

      bottomNavigationBar: NavigationBar(
        selectedIndex: widget.controller.selectedScreen,
        backgroundColor: const Color(0xffFFFFFF),
        indicatorColor: Style.PRIMARY_TRANSPARENT_COLOR.withOpacity(0.3),
        labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
        onDestinationSelected: (index){
          setState(() {
            widget.controller.changeScreen(index);
          });
        },
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home_outlined), selectedIcon: Icon(Icons.home_filled), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.calendar_month_outlined), selectedIcon: Icon(Icons.calendar_month), label: 'Schedule'),
          NavigationDestination(icon: Icon(Icons.chat_outlined), selectedIcon: Icon(Icons.chat), label: 'Chat'),
          NavigationDestination(icon: Icon(Icons.account_circle_outlined), selectedIcon: Icon(Icons.account_circle), label: 'Profile'),
        ],),
    );
  }
}
