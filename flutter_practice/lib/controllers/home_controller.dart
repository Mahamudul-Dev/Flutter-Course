import 'package:flutter/material.dart';

class HomeController {
  var value = '';
  final searchBarController = TextEditingController();

  // final List<>

  void printItem(String itemName){
    print("Pressed $itemName}");
  }

  void searchItem(String query) {
    print("Searching.... : $query");
  }
}