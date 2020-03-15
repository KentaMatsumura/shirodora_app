import 'package:flutter/material.dart';

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
//class Condition {
//  String _name = '';
//  String _cost = '';
//
////  Condition(this.name, this.cost);
//
//  String get name => this._name;
//
//  String get cost => this._cost;
//
//  setName(String n) {
//    _name = n;
////    notifyListeners();
//  }
//
//  setCost(String c) {
//    _cost = c;
////    notifyListeners();
//  }
//}
