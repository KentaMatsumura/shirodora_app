import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shirodoraapp/models/condition.dart';
import 'package:shirodoraapp/screens/home/character_list.dart';
import 'package:shirodoraapp/screens/home/chips_container.dart';
import 'package:shirodoraapp/screens/home/text_form.dart';
import 'package:shirodoraapp/services/database.dart';
import 'package:shirodoraapp/shared/loading.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    try {
      return ChangeNotifierProvider<Condition>(
        create: (_) => Condition(),
        child: Container(
          child: Scaffold(
            backgroundColor: Colors.brown[50],
            appBar: AppBar(
              title: Text('Shirodora App Home'),
              backgroundColor: Colors.brown[400],
              elevation: 0.0,
            ),
            body: ListView(
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
              children: <Widget>[
                Text('Character List'),
                TextForm(),
                ChipsContainer(),
                CharacterList(),
              ],
            ),
          ),
        ),
      );
    } catch (e) {
      return Loading();
    }
  }
}
