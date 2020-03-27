import 'package:flutter/material.dart';

class Badge {
  final Map silver;
  final Map gold;
  final Map rainbow;

  Badge({this.silver, this.gold, this.rainbow});
}

class BadgeFlag with ChangeNotifier {
  bool _bronzeLevelFlag = false;

  bool get bronzeFlag => this._bronzeLevelFlag;

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
  bool _rainbowAbilityFlag = false;

  bool get rainbowLevelFlag => _rainbowLevelFlag;

  bool get rainbowChildFlag1 => _rainbowChildFlag1;

  bool get rainbowChildFlag2 => _rainbowChildFlag2;

  bool get rainbowAbilityFlag => _rainbowAbilityFlag;

  // Meet the bronze flag
  setBronzeFlag() {
    _bronzeLevelFlag = !_bronzeLevelFlag;
  }

  setSilverLevelFlag() {
    _silverLevelFlag = !_silverLevelFlag;
    setSilverFlag();
  }

  setSilverChildFlag() {
    _silverChildFlag = !_silverChildFlag;
    setSilverFlag();
  }

  // Meet the silver conditions
  setSilverFlag() {
    if (_silverLevelFlag && _silverChildFlag) {
    } else {}
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

  // Meet the gold conditions
  setGoldFlag() {
    if (_goldLevelFlag && _goldChildFlag1 && _goldChildFlag2) {
    } else {}
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

  setRainbowAbilityFlag() {
    _rainbowAbilityFlag = !_rainbowAbilityFlag;
    setRainbowFlag();
  }

  // Meet the rainbow conditions
  setRainbowFlag() {
    if (_rainbowLevelFlag &&
        _rainbowChildFlag1 &&
        _rainbowChildFlag2 &&
        rainbowAbilityFlag) {
    } else {}
  }
}
