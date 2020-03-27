import 'package:flutter/material.dart';

class Trophy {
  final Map d2;
  final Map d1;
  final bool d0;

  Trophy({this.d2, this.d1, this.d0});
}

class TrophyFlag with ChangeNotifier {
  bool _d3LevelFlag = false;

  bool get d3Flag => this._d3LevelFlag;

  bool _d2LevelFlag = false;
  bool _d2ChildFlag1 = false;
  bool _d2ChildFlag2 = false;
  bool _d2UmapFlag = false;

  bool get d2LevelFlag => this._d2LevelFlag;

  bool get d2ChildFlag1 => this._d2ChildFlag1;

  bool get d2ChildFlag2 => this._d2ChildFlag2;

  bool get d2UmapFlag => _d2UmapFlag;

  bool _d1LevelFlag = false;
  bool _d1ChildFlag1 = false;
  bool _d1ChildFlag2 = false;
  bool _d1UmapFlag = false;

  bool get d1LevelFlag => _d1LevelFlag;

  bool get d1ChildFlag1 => _d1ChildFlag1;

  bool get d1ChildFlag2 => _d1ChildFlag2;

  bool get d1UmapFlag => _d1UmapFlag;

  bool _d0LevelFlag = false;
  bool _d0SkillFlag = false;
  bool _d0UmapFlag = false;

  bool get d0LevelFlag => _d0LevelFlag;

  bool get d0SkillFlag => _d0SkillFlag;

  bool get d0UmapFlag => _d0UmapFlag;

  // Meet the d3 condition
  setD3Flag() {
    _d3LevelFlag = !_d3LevelFlag;
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

  setD2UmapFlag() {
    _d2UmapFlag = !_d2UmapFlag;
    setD2Flag();
  }

  // Meet the d2 condition
  setD2Flag() {
    if (_d2LevelFlag && _d2ChildFlag1 && _d2ChildFlag2 && _d2UmapFlag) {
    } else {}
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

  setD1UmapFlag() {
    _d1UmapFlag = !_d1UmapFlag;
    setD1Flag();
  }

  // Meet the d1 condition
  setD1Flag() {
    if (_d1LevelFlag && _d1ChildFlag1 && _d1ChildFlag2 && _d1UmapFlag) {
    } else {}
  }

  setD0LevelFlag() {
    _d0LevelFlag = !_d0LevelFlag;
    setD0Flag();
  }

  setD0SkillFlag() {
    _d0SkillFlag = !_d0SkillFlag;
    setD0Flag();
  }

  setD0UmapFlag() {
    _d0UmapFlag = !_d0UmapFlag;
    setD0Flag();
  }

  // Meet the d0 condition
  setD0Flag() {
    if (_d0LevelFlag && _d0SkillFlag && _d0UmapFlag) {
    } else {}
  }
}
