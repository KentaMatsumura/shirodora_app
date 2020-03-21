import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shirodoraapp/models/badge.dart';
import 'package:shirodoraapp/models/character.dart';
import 'package:shirodoraapp/models/condition.dart';
import 'package:shirodoraapp/models/detail.dart';

class DatabaseService {
  final Condition searchItems;

  DatabaseService({this.searchItems});

  final CollectionReference characterCollection =
      Firestore.instance.collection('character');

  final CollectionReference badgeCollection =
      Firestore.instance.collection('badge');

  final CollectionReference trophyCollection =
      Firestore.instance.collection('trophy');

  // detail list from snapshot
  // ignore: missing_return
  List<Detail> _detailListFromSnapshot(QuerySnapshot snapshot) {
    switch (searchItems.cost) {
      case '':
      case '0':
        return snapshot.documents
            .where((doc) =>
                searchCharacterWithName(doc.data['name'], searchItems.name))
            .map((doc) {
          return getData(doc);
        }).toList();
      case '1':
      case '2':
      case '3':
      case '4':
        return snapshot.documents
            .where((doc) => doc.data['details']['cost'] == searchItems.cost)
            .where((doc) =>
                searchCharacterWithName(doc.data['name'], searchItems.name))
            .map((doc) {
          return getData(doc);
        }).toList();
      case '5':
        return snapshot.documents
            .where((doc) =>
                int.parse(doc.data['details']['cost']) >=
                int.parse(searchItems.cost))
            .where((doc) =>
                searchCharacterWithName(doc.data['name'], searchItems.name))
            .map((doc) {
          return getData(doc);
        }).toList();
    }
  }

  Detail getData(DocumentSnapshot doc) {
    return Detail(
      name: doc.data['name'] ?? '',
      cost: doc.data['details']['cost'] ?? '',
      cid: doc.data['id'] ?? '',
    );
  }

  bool searchCharacterWithName(String originalName, String inputName) {
    final String lowerOriginalName = originalName.toLowerCase();
    final String lowerInputName = inputName.toLowerCase();

    final int firstOfInputName = lowerOriginalName.indexOf(lowerInputName);

    if (firstOfInputName == -1) {
      return false;
    } else {
      return true;
    }
  }

  // characterDara from snapshot
  Character _characterDataFromSnapshot(DocumentSnapshot snapshot) {
    return Character(
      cid: snapshot.data['id'],
      name: snapshot.data['name'],
      ability: {
            'ability_name': snapshot.data['ability']['ability_name'],
            'ability_lv1': snapshot.data['ability']['ability_lv1'],
            'ability_lv2': snapshot.data['ability']['ability_lv2'],
            'ability_lv3': snapshot.data['ability']['ability_lv3'],
          } ??
          {
            'ability_name': '',
            'ability_lv1': '',
            'ability_lv2': '',
            'ability_lv3': '',
          },
      skill: {
        'skill_name': snapshot.data['skill']['skill_name'],
        'skill_comment': snapshot.data['skill']['skill_comment'],
      },
      comment: snapshot.data['comment'],
    );
  }

  Badge _badgeDataFromSnapshot(DocumentSnapshot snapshot) {
    try {
      return Badge(
        silver: snapshot.data['silver'],
        gold: snapshot.data['gold'],
        rainbow: snapshot.data['rainbow'],
      );
    } catch (e) {
      return new Badge();
    }
  }

  // get details stream
  Stream<List<Detail>> get details {
    return characterCollection.snapshots().map(_detailListFromSnapshot);
  }

  // get character doc stream
  Stream<Character> characterData(String cid) {
    return characterCollection
        .document(cid)
        .snapshots()
        .map(_characterDataFromSnapshot);
  }

  // get badge doc stream
  Stream<Badge> badgeData(String name) {
    return badgeCollection
        .document(name)
        .snapshots()
        .map(_badgeDataFromSnapshot);
  }
}
