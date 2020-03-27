import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shirodoraapp/models/condition.dart';
import 'package:shirodoraapp/models/detail.dart';
import 'package:shirodoraapp/screens/home/character_table.dart';
import 'package:shirodoraapp/services/database.dart';
import 'package:shirodoraapp/shared/loading.dart';

class CharacterList extends StatefulWidget {
  @override
  _CharacterListState createState() => _CharacterListState();
}

class _CharacterListState extends State<CharacterList> {
  @override
  Widget build(BuildContext context) {
    final searchItems = Provider.of<Condition>(context);
    try {
      return StreamProvider<List<Detail>>.value(
        value: DatabaseService(searchItems: searchItems).details,
        child: Container(
          child: CharacterTable(),
        ),
      );
    }catch(e){
      return Loading();
    }
  }
}
