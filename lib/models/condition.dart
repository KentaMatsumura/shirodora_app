import 'package:flutter/material.dart';
import 'package:shirodoraapp/screens/home/character_image_table.dart';
import 'package:shirodoraapp/screens/home/character_list.dart';

class Condition with ChangeNotifier {
  String _name = '';
  String _cost = '';

  String get name => this._name;

  String get cost => this._cost;

  setName(String n) {
    _name = n;
    notifyListeners();
  }

  setCost(String c) {
    _cost = c;
    notifyListeners();
  }
}
