import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shirodoraapp/models/character.dart';
import 'package:shirodoraapp/screens/home/home.dart';
import 'package:shirodoraapp/services/database.dart';

class Details extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final characterData = Provider.of<Character>(context) ??
        Character(cid: 0, name: '', skill: {}, ability: {});
    print(' ${characterData.name}');
    return Container(
      child: Scaffold(
        backgroundColor: Colors.brown[50],
        appBar: AppBar(
          title: Text('${characterData.name} 詳細'),
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
        body: Container(),
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
