import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shirodoraapp/models/character.dart';
import 'package:shirodoraapp/screens/details/character_card.dart';
import 'package:shirodoraapp/screens/details/status_list_tile.dart';
import 'package:shirodoraapp/screens/home/home.dart';
import 'package:shirodoraapp/services/database.dart';

class Details extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final characterData = Provider.of<Character>(context) ??
        Character(cid: 0, name: '', skill: {}, ability: {}, comment: '');
    return Container(
      child: Scaffold(
        backgroundColor: Colors.brown[50],
        body: Scaffold(
          backgroundColor: Colors.brown[50],
          appBar: AppBar(
            title: Text('${characterData.name}'),
            backgroundColor: Colors.brown[400],
            elevation: 0.0,
            actions: <Widget>[
              FlatButton.icon(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      new MaterialPageRoute(builder: (context) => new Home()),
                      (_) => false);
                },
                icon: Icon(Icons.home),
                label: Text(''),
              ),
            ],
          ),
          body: ListView(
            padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
            children: <Widget>[
              CharacterCard(
                name: characterData.name,
                comment: characterData.comment,
                cid: characterData.cid,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SampleRaisedButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return Details();
        }));
      },
    );
  }
}
