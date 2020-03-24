import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shirodoraapp/models/badge.dart';
import 'package:shirodoraapp/screens/details/details_home.dart';

class NeedCharacterList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final badgeDataList = Provider.of<Badge>(context) ?? Badge();
    if (badgeDataList.silver == null) {
      return Container();
    } else {
      return Row(
        children: <Widget>[
          BuildCharacterIcon(
            badge: badgeDataList,
          )
        ],
      );
    }
  }
}

class BuildCharacterIcon extends StatefulWidget {
  final Badge badge;

  BuildCharacterIcon({this.badge});

  @override
  _BuildCharacterIconState createState() => _BuildCharacterIconState();
}

class _BuildCharacterIconState extends State<BuildCharacterIcon> {
  _buildCharacterIcon(Badge badge) {
    List<Widget> list = List();
    badge.silver.forEach((k, v) {
      list.add(GestureDetector(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) {
              return DetailsHome(
                cid: v['id'],
              );
            }),
          );
        },
        child: Image.asset(
          'assets/${v['id']}.png',
          scale: 5.0,
        ),
      ));
    });
    badge.gold.forEach((k, v) {
      list.add(GestureDetector(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) {
              return DetailsHome(
                cid: v['id'],
              );
            }),
          );
        },
        child: Image.asset(
          'assets/${v['id']}.png',
          scale: 5.0,
        ),
      ));
    });
    badge.rainbow.forEach((k, v) {
      list.add(GestureDetector(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) {
              return DetailsHome(
                cid: v['id'],
              );
            }),
          );
        },
        child: Image.asset(
          'assets/${v['id']}.png',
          scale: 5.0,
        ),
      ));
    });
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Wrap(
        spacing: 8.0, // gap between adjacent chips
        runSpacing: 4.0, // gap between lines
        children: _buildCharacterIcon(widget.badge),
      ),
    );
  }
}
