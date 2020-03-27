import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shirodoraapp/models/badge.dart';
import 'package:shirodoraapp/screens/details/badge/card_template.dart';
import 'package:shirodoraapp/shared/loading.dart';

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
    final badgeDataList = Provider.of<Badge>(context) ?? Badge();
    if (badgeDataList == null) {
      return Loading();
    } else {
      return ChangeNotifierProvider<BadgeFlag>(
        create: (_) => flag,
        child: Column(
          children: <Widget>[
            Card(
              color: Colors.cyan[100],
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ListTile(
                    title: Text(
                      '銅バッジ',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  BronzeCheckbox(),
                ],
              ),
            ),
            Card(
              color: Colors.cyan[200],
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ListTile(
                    title: Text(
                      '銀バッジ',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  SilverCheckbox(
                    silver: badgeDataList.silver,
                  ),
                ],
              ),
            ),
            Card(
              color: Colors.cyan[300],
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ListTile(
                    title: Text(
                      '金バッジ',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  GoldCheckbox(
                    gold: badgeDataList.gold,
                  ),
                ],
              ),
            ),
            Card(
              color: Colors.cyan[400],
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ListTile(
                    title: Text(
                      '虹バッジ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  RainbowCheckbox(
                    rainbow: badgeDataList.rainbow,
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }
  }
}
