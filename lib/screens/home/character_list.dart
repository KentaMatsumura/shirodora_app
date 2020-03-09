import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shirodoraapp/models/detail.dart';
import 'package:shirodoraapp/screens/home/character_sample.dart';
import 'package:shirodoraapp/services/database.dart';

class CharacterList extends StatefulWidget {
  @override
  _CharacterListState createState() => _CharacterListState();
}

class _CharacterListState extends State<CharacterList> {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<List<Detail>>.value(
      value: DatabaseService().details,
      child: Container(
        child: CharacterSample(),
      ),
    );
  }
}
