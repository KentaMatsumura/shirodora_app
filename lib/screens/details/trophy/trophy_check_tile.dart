import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shirodoraapp/models/trophy.dart';
import 'package:shirodoraapp/screens/details/trophy/card_template.dart';

class TrophyCheckTile extends StatefulWidget {
  final Map d2;
  final Map d1;

  TrophyCheckTile({this.d2, this.d1});

  @override
  _TrophyCheckTileState createState() => _TrophyCheckTileState();
}

class _TrophyCheckTileState extends State<TrophyCheckTile> {
  TrophyFlag flag = TrophyFlag();

  @override
  Widget build(BuildContext context) {
    final trophyDataList = Provider.of<Trophy>(context) ?? Trophy();
    try {
      return ChangeNotifierProvider<TrophyFlag>(
        create: (_) => flag,
        child: Column(
          children: <Widget>[
            Card(
              color: Colors.yellow[100],
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ListTile(
                    title: Text(
                      'D3トロフィー',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  D3CheckBox(),
                ],
              ),
            ),
            Card(
              color: Colors.yellow[200],
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ListTile(
                    title: Text(
                      'D2トロフィー',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  D2CheckBox(d2: widget.d2),
                ],
              ),
            ),
            Card(
              color: Colors.yellow[300],
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ListTile(
                    title: Text(
                      'D1トロフィー',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  D1CheckBox(d1: widget.d1),
                ],
              ),
            ),
            Card(
              color: Colors.yellow[400],
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ListTile(
                    title: Text(
                      'D0トロフィー',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  D0CheckBox(),
                ],
              ),
            ),
          ],
        ),
      );
    } catch (e) {
      return Container(
        child: Text('$e'),
      );
    }
  }
}
