import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shirodoraapp/models/badge.dart';
import 'package:shirodoraapp/screens/details/badge/badge_check_tile.dart';
import 'package:shirodoraapp/shared/loading.dart';

class BadgeListHome extends StatefulWidget {
  @override
  _BadgeListHomeState createState() => _BadgeListHomeState();
}

class _BadgeListHomeState extends State<BadgeListHome> {
  @override
  Widget build(BuildContext context) {
    final badgeData = Provider.of<Badge>(context);
    try {
      return BadgeCheckTile(
        silver: badgeData.silver,
        gold: badgeData.gold,
        rainbow: badgeData.rainbow,
      );
    } catch (e) {
      return Loading();
    }
  }
}
