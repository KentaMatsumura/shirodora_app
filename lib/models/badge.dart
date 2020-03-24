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

  bool _silverLevelFlag = false;
  bool _silverChildFlag = false;

  bool get silverLevelFlag => this._silverLevelFlag;

  bool get silverChildFlag => this._silverChildFlag;

  bool _goldLevelFlag = false;
  bool _goldChildFlag1 = false;
  bool _goldChildFlag2 = false;

  bool get goldLevelFlag => _goldLevelFlag;

  bool get goldChildFlag1 => _goldChildFlag1;

  bool get goldChildFlag2 => _goldChildFlag2;

  bool _rainbowLevelFlag = false;
  bool _rainbowChildFlag1 = false;
  bool _rainbowChildFlag2 = false;

  bool get rainbowLevelFlag => _rainbowLevelFlag;

  bool get rainbowChildFlag1 => _rainbowChildFlag1;

  bool get rainbowChildFlag2 => _rainbowChildFlag2;

  setBronzeFlag() {
    _bronzeFlag = !_bronzeFlag;
//    notifyListeners();
  }

  setSilverLevelFlag() {
    _silverLevelFlag = !_silverLevelFlag;
    setSilverFlag();
  }

  setSilverChildFlag() {
    _silverChildFlag = !_silverChildFlag;
    setSilverFlag();
  }

  setSilverFlag() {
    if (_silverLevelFlag && _silverChildFlag) {
      _silverFlag = true;
    } else {
      _silverFlag = false;
    }
//    notifyListeners();
  }

  setGoldLevelFlag() {
    _goldLevelFlag = !_goldLevelFlag;
    setGoldFlag();
  }

  setGoldChildFlag1() {
    _goldChildFlag1 = !_goldChildFlag1;
    setGoldFlag();
  }

  setGoldChildFlag2() {
    _goldChildFlag2 = !_goldChildFlag2;
    setGoldFlag();
  }

  setGoldFlag() {
    if (_goldLevelFlag && _goldChildFlag1 && _goldChildFlag2) {
      _goldFlag = true;
      _silverFlag = true;
    } else {
      _goldFlag = false;
    }

//    notifyListeners();
  }

  setRainbowLevelFlag() {
    _rainbowLevelFlag = !_rainbowLevelFlag;
    setRainbowFlag();
  }

  setRainbowChildFlag1() {
    _rainbowChildFlag1 = !_rainbowChildFlag1;
    setRainbowFlag();
  }

  setRainbowChildFlag2() {
    _rainbowChildFlag2 = !_rainbowChildFlag2;
    setRainbowFlag();
  }

  setRainbowFlag() {
    if (_rainbowLevelFlag && _rainbowChildFlag1 && _rainbowChildFlag2) {
      _rainbowFlag = !_rainbowFlag;
    } else {
      _rainbowFlag = false;
    }
//    notifyListeners();
  }
}
