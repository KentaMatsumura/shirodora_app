import 'package:flutter/material.dart';
import 'package:shirodoraapp/screens/details/status_list_tile.dart';

class CharacterCard extends StatelessWidget {
  final String name;
  final String comment;
  final int cid;

  CharacterCard({this.name, this.comment, this.cid});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
            leading: CircleAvatar(
              radius: 30.0,
              backgroundColor: Colors.brown[400],
              backgroundImage: AssetImage('assets/$cid.png'),
            ),
            title: Text(
              '$name',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w900,
                color: Colors.brown,
              ),
            ),
            subtitle: Text(
              '$comment',
              style: TextStyle(
                color: Colors.brown[400],
              ),
            ),
          ),
          StatusListTile(),
        ],
      ),
    );
  }
}
