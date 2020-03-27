import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shirodoraapp/models/trophy.dart';
import 'package:shirodoraapp/screens/details/trophy/trophy_check_tile.dart';
import 'package:shirodoraapp/shared/loading.dart';

class TrophyListHome extends StatefulWidget {
  @override
  _TrophyListHomeState createState() => _TrophyListHomeState();
}

class _TrophyListHomeState extends State<TrophyListHome> {
  @override
  Widget build(BuildContext context) {
    final trophyData = Provider.of<Trophy>(context);
    try {
      return TrophyCheckTile(
        d2: trophyData.d2,
        d1: trophyData.d1,
        d0: trophyData.d0,
      );
    } catch (e) {
      return Loading();
    }
  }
}
