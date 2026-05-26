import 'package:flutter/material.dart';

class TextProvider extends ChangeNotifier {
  String _data = "Hello";

  String get data => _data;

  void changeText() {
    if (_data == "Hello") {
      _data = "How";
    } else if (_data == "How") {
      _data = "Are";
    } else if (_data == "Are") {
      _data = "You";
    } else {
      _data = "Hello";
    }
    notifyListeners();
  }
}
