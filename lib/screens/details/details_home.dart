import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shirodoraapp/models/character.dart';
import 'package:shirodoraapp/screens/details/details.dart';
import 'package:shirodoraapp/services/database.dart';

class DetailsHome extends StatelessWidget {
  final int cid;

  DetailsHome({this.cid});

  @override
  Widget build(BuildContext context) {
    return StreamProvider<Character>.value(
      value: DatabaseService().characterData(cid),
      child: Details(),
    );
  }
}
