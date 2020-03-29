import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shirodoraapp/models/badge.dart';
import 'package:shirodoraapp/models/trophy.dart';
import 'package:shirodoraapp/screens/details/details_home.dart';
import 'package:shirodoraapp/shared/loading.dart';

class NeedCharacterList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final badgeDataList = Provider.of<Badge>(context) ?? Badge();
    final trophyDataList = Provider.of<Trophy>(context) ?? Trophy();
    if (badgeDataList.silver == null) {
      return Container();
    } else {
      return Wrap(
        children: <Widget>[
          BuildCharacterIcon(
            badge: badgeDataList,
            trophy: trophyDataList,
          )
        ],
      );
    }
  }
}

class BuildCharacterIcon extends StatefulWidget {
  final Badge badge;
  final Trophy trophy;

  BuildCharacterIcon({this.badge, this.trophy});

  @override
  _BuildCharacterIconState createState() => _BuildCharacterIconState();
}

class _BuildCharacterIconState extends State<BuildCharacterIcon> {
  _buildCharacterIcon(Badge badge, Trophy trophy) {
    List<Widget> list = List();
    if (badge.silver != null) {
      badge.silver.forEach((k, v) {
        list.add(BuildGestureDetector(k: k, v: v));
      });
    }
    if (badge.gold != null) {
      badge.gold.forEach((k, v) {
        list.add(BuildGestureDetector(k: k, v: v));
      });
    }
    if (badge.rainbow != null) {
      badge.rainbow.forEach((k, v) {
        list.add(BuildGestureDetector(k: k, v: v));
      });
    }
    if (trophy.d2 != null) {
      trophy.d2.forEach((k, v) {
        list.add(BuildGestureDetector(k: k, v: v));
      });
    }
    if (trophy.d1 != null) {
      trophy.d1.forEach((k, v) {
        list.add(BuildGestureDetector(k: k, v: v));
      });
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Wrap(
        spacing: 8.0, // gap between adjacent chips
        runSpacing: 4.0, // gap between lines
        children: _buildCharacterIcon(widget.badge, widget.trophy),
      ),
    );
  }
}

class BuildGestureDetector extends StatefulWidget {
  final k;
  final v;

  BuildGestureDetector({this.k, this.v});

  @override
  _BuildGestureDetectorState createState() => _BuildGestureDetectorState();
}

class _BuildGestureDetectorState extends State<BuildGestureDetector> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) {
            return DetailsHome(
              cid: widget.v['id'],
            );
          }),
        );
      },
      child: widget.v['id'] != null
          ? Image.asset(
              'assets/${widget.v['id']}.png',
              scale: 5.0,
            )
          : Image.asset(
              'assets/0.png',
              scale: 5.0,
            ),
    );
  }
}
