import 'package:flutter/material.dart';

class Trophy {
  final Map d2;
  final Map d1;

  Trophy({this.d2, this.d1});
}

class TrophyFlag with ChangeNotifier {
  bool _d3Flag = false;
  bool _d2Flag = false;
  bool _d1Flag = false;
  bool _d0Flag = false;

  bool get d3Flag => this._d3Flag;

  bool get d2Flag => this._d2Flag;

  bool get d1Flag => this._d1Flag;

  bool get d0Flag => this._d0Flag;

  bool _d2LevelFlag = false;
  bool _d2ChildFlag1 = false;
  bool _d2ChildFlag2 = false;

  bool get d2LevelFlag => this._d2LevelFlag;

  bool get d2ChildFlag1 => this._d2ChildFlag1;

  bool get d2ChildFlag2 => this._d2ChildFlag2;

  bool _d1LevelFlag = false;
  bool _d1ChildFlag1 = false;
  bool _d1ChildFlag2 = false;

  bool get d1LevelFlag => _d1LevelFlag;

  bool get d1ChildFlag1 => _d1ChildFlag1;

  bool get d1ChildFlag2 => _d1ChildFlag2;

  bool _d0LevelFlag = false;
  bool _d0SkillFlag = false;

  bool get d0LevelFlag => _d0LevelFlag;

  bool get d0SkillFlag => _d0SkillFlag;

  setD3Flag() {
    _d3Flag = !_d3Flag;
  }

  setD2LevelFlag() {
    _d2LevelFlag = !_d2LevelFlag;
    setD2Flag();
  }

  setD2ChildFlag1() {
    _d2ChildFlag1 = !_d2ChildFlag1;
    setD2Flag();
  }

  setD2ChildFlag2() {
    _d2ChildFlag2 = !_d2ChildFlag2;
    setD2Flag();
  }

  setD2Flag() {
    if (_d2LevelFlag && _d2ChildFlag1 && _d2ChildFlag2) {
      _d2Flag = true;
    } else {
      _d2Flag = false;
    }
  }

  setD1LevelFlag() {
    _d1LevelFlag = !_d1LevelFlag;
    setD1Flag();
  }

  setD1ChildFlag1() {
    _d1ChildFlag1 = !_d1ChildFlag1;
    setD1Flag();
  }

  setD1ChildFlag2() {
    _d1ChildFlag2 = !_d1ChildFlag2;
    setD1Flag();
  }

  setD1Flag() {
    if (_d1LevelFlag && _d1ChildFlag1 && _d1ChildFlag2) {
      _d1Flag = true;
    } else {
      _d1Flag = false;
    }
  }

  setD0LevelFlag() {
    _d0LevelFlag = !_d0LevelFlag;
    setD0Flag();
  }

  setD0SkillFlag() {
    _d0SkillFlag = !_d0SkillFlag;
    setD0Flag();
  }

  setD0Flag() {
    if (_d0LevelFlag && _d0SkillFlag) {
      _d0Flag = !_d0Flag;
    } else {
      _d0Flag = false;
    }
  }
}
