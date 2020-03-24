import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shirodoraapp/models/character.dart';
import 'package:shirodoraapp/screens/details/badge/badge_home.dart';
import 'package:shirodoraapp/screens/details/need_character_list.dart';
import 'package:shirodoraapp/screens/details/character_card.dart';
import 'package:shirodoraapp/screens/details/setting_home.dart';
import 'package:shirodoraapp/screens/details/trophy/trophy_home.dart';
import 'package:shirodoraapp/services/database.dart';

class Details extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final characterData = Provider.of<Character>(context) ??
        Character(cid: 0, name: '', skill: {}, ability: {}, comment: '');
    Provider.debugCheckInvalidValueType = null;
    if (characterData.cid == 1) {
      return MultiProvider(
        providers: [
          StreamProvider.value(
              value: DatabaseService().badgeData(characterData.name)),
          StreamProvider.value(
              value: DatabaseService().trophyData(characterData.name)),
        ],
        child: Container(
          child: Scaffold(
            backgroundColor: Colors.brown[50],
            appBar: AppBar(
              title: Text('${characterData.name}'),
              backgroundColor: Colors.brown[400],
              elevation: 0.0,
              actions: <Widget>[
                SettingHome(),
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
    } else {
      return MultiProvider(
        providers: [
          StreamProvider.value(
              value: DatabaseService().badgeData(characterData.name)),
          StreamProvider.value(
              value: DatabaseService().trophyData(characterData.name)),
        ],
        child: Container(
          child: Scaffold(
            backgroundColor: Colors.brown[50],
            appBar: AppBar(
              title: Text('${characterData.name}'),
              backgroundColor: Colors.brown[400],
              elevation: 0.0,
              actions: <Widget>[
                SettingHome(),
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
                NeedCharacterList(),
                BadgeListHome(),
                TrophyListHome(),
              ],
            ),
          ),
        ),
      );
    }
  }
}
