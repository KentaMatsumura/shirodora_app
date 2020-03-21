import 'package:flutter/material.dart';

class Badge {
  final Map silver;
  final Map gold;
  final Map rainbow;

  Badge({this.silver, this.gold, this.rainbow});
}

class BadgeFlag with ChangeNotifier {
  bool _bronzeFlag = false;
  bool _silverFlag = false;
  bool _goldFlag = false;
  bool _rainbowFlag = false;

  bool get bronzeFlag => this._bronzeFlag;

  bool get silverFlag => this._silverFlag;

  bool get goldFlag => this._goldFlag;

  bool get rainbowFlag => this._rainbowFlag;

  setBronzeFlag() {
    _bronzeFlag = !_bronzeFlag;
    notifyListeners();
  }

  setSilverFlag() {
    _silverFlag = !_silverFlag;
    if (_silverFlag) {
      _bronzeFlag = true;
    }
    notifyListeners();
  }

  setGoldFlag() {
    _goldFlag = !_goldFlag;
    if (_goldFlag) {
      _bronzeFlag = true;
      _silverFlag = true;
    }
    notifyListeners();
  }

  setRainbowFlag() {
    _rainbowFlag = !_rainbowFlag;
    if (_rainbowFlag) {
      _bronzeFlag = true;
      _silverFlag = true;
      _goldFlag = true;
    }
    notifyListeners();
  }
}
