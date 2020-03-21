import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shirodoraapp/models/badge.dart';

class BronzeCheckbox extends StatefulWidget {
  @override
  _BronzeCheckboxState createState() => _BronzeCheckboxState();
}

class _BronzeCheckboxState extends State<BronzeCheckbox> {
  @override
  Widget build(BuildContext context) {
    var _flag = Provider.of<BadgeFlag>(context);
    return CheckboxListTile(
      activeColor: Colors.blue,
      title: Text('キャラクターLv1以上'),
      value: _flag.bronzeFlag,
      controlAffinity: ListTileControlAffinity.leading,
      onChanged: (bool e) {
        setState(() {
          _flag.setBronzeFlag();
        });
      },
    );
  }
}

class SilverCheckbox extends StatefulWidget {
  @override
  _SilverCheckboxState createState() => _SilverCheckboxState();
}

class _SilverCheckboxState extends State<SilverCheckbox> {
  @override
  Widget build(BuildContext context) {
    var _flag = Provider.of<BadgeFlag>(context);
    return CheckboxListTile(
      activeColor: Colors.blue,
      title: Text('キャラクターLv18以上'),
      value: _flag.silverFlag,
      controlAffinity: ListTileControlAffinity.leading,
      onChanged: (bool e) {
        setState(() {
          _flag.setSilverFlag();
        });
      },
    );
  }
}

class GoldCheckbox extends StatefulWidget {
  @override
  _GoldCheckboxState createState() => _GoldCheckboxState();
}

class _GoldCheckboxState extends State<GoldCheckbox> {
  @override
  Widget build(BuildContext context) {
    var _flag = Provider.of<BadgeFlag>(context);
    return CheckboxListTile(
      activeColor: Colors.blue,
      title: Text('キャラクターLv27以上'),
      value: _flag.goldFlag,
      controlAffinity: ListTileControlAffinity.leading,
      onChanged: (bool e) {
        setState(() {
          _flag.setGoldFlag();
        });
      },
    );
  }
}

class RainbowCheckbox extends StatefulWidget {
  @override
  _RainbowCheckboxState createState() => _RainbowCheckboxState();
}

class _RainbowCheckboxState extends State<RainbowCheckbox> {
  @override
  Widget build(BuildContext context) {
    var _flag = Provider.of<BadgeFlag>(context);
    return CheckboxListTile(
      activeColor: Colors.blue,
      title: Text('キャラクターLv32以上'),
      value: _flag.rainbowFlag,
      controlAffinity: ListTileControlAffinity.leading,
      onChanged: (bool e) {
        setState(() {
          _flag.setRainbowFlag();
        });
      },
    );
  }
}
