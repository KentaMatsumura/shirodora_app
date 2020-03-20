import 'package:flutter/material.dart';
import 'package:shirodoraapp/screens/home/home.dart';

class SettingHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlatButton.icon(
      onPressed: () {
        Navigator.pushAndRemoveUntil(
            context,
            new MaterialPageRoute(builder: (context) => new Home()),
            (_) => false);
      },
      icon: Icon(Icons.home),
      label: Text(''),
    );
  }
}
