import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shirodoraapp/models/character.dart';
import 'package:shirodoraapp/models/condition.dart';
import 'package:shirodoraapp/models/detail.dart';

class DatabaseService {
  final Condition searchItems;

  DatabaseService({this.searchItems});

  final CollectionReference characterCollection =
      Firestore.instance.collection('character');

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
  // まだ使ってない
  CharacterData _characterDataFromSnapshot(DocumentSnapshot snapshot) {
    return CharacterData(
      uid: 'uid',
      name: snapshot.data['name'],
    );
  }

  Future<QuerySnapshot> get cid {
    return characterCollection.getDocuments();
  }

  // get details stream
  Stream<List<Detail>> get details {
    return characterCollection.snapshots().map(_detailListFromSnapshot);
  }

  // get character doc stream
  // まだ使ってない
  Stream<CharacterData> get characterData {
    return characterCollection
        .document()
        .snapshots()
        .map(_characterDataFromSnapshot);
  }

  // 使ってない
  Future getDocuments() async {
    return await characterCollection.getDocuments();
  }
}
