import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shirodoraapp/models/condition.dart';
import 'package:shirodoraapp/models/detail.dart';
import 'package:shirodoraapp/screens/home/character_table.dart';
import 'package:shirodoraapp/services/database.dart';

class CharacterList extends StatefulWidget {
  @override
  _CharacterListState createState() => _CharacterListState();
}

class _CharacterListState extends State<CharacterList> {
  @override
  Widget build(BuildContext context) {
    final searchItems = Provider.of<Condition>(context);
    final detailsList = DatabaseService().details;
    return StreamProvider<List<Detail>>.value(
      value: _searchCharacter(searchItems, detailsList),
      child: Container(
        child: CharacterTable(),
      ),
    );
  }

  _searchCharacter(Condition searchItems, Stream<List<Detail>> detailsList) {
    List<Detail> result;
    detailsList.forEach((item) {
      item.forEach((detail) {
      });
    });
    return detailsList;
  }
}
