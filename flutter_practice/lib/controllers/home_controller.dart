import 'package:flutter/material.dart';

class HomeController {

  final searchBarController = TextEditingController();

  void printItem(String itemName){
    print("Pressed $itemName}");
  }

  void searchItem(String query) {
    print("Searching.... : $query");
  }
}