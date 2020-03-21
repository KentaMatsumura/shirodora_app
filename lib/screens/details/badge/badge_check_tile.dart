import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shirodoraapp/models/badge.dart';
import 'package:shirodoraapp/screens/details/badge/card_template.dart';

class BadgeCheckTile extends StatefulWidget {
  final Map silver;
  final Map gold;
  final Map rainbow;

  BadgeCheckTile({this.silver, this.gold, this.rainbow});

  @override
  _BadgeCheckTileState createState() => _BadgeCheckTileState();
}

class _BadgeCheckTileState extends State<BadgeCheckTile> {
  BadgeFlag flag = BadgeFlag();

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<BadgeFlag>(
      create: (_) => flag,
      child: Column(
        children: <Widget>[
          Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  title: Text('銅バッジ'),
                ),
                BronzeCheckbox(),
              ],
            ),
          ),
          Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  title: Text('銀バッジ'),
                ),
                SilverCheckbox(),
              ],
            ),
          ),
          Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  title: Text('金バッジ'),
                ),
                GoldCheckbox(),
              ],
            ),
          ),
          Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  title: Text('虹バッジ'),
                ),
                RainbowCheckbox(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
