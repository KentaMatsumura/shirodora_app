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
  List<Detail> _detailListFromSnapshot(QuerySnapshot snapshot) {
    switch (searchItems.cost) {
      case '':
      case '0':
        return snapshot.documents.map((doc) {
          return Detail(
            name: doc.data['name'] ?? '',
            cost: doc.data['details']['cost'] ?? '',
            cid: doc.data['id'] ?? '',
          );
        }).toList();
      case '1':
      case '2':
      case '3':
      case '4':
        return snapshot.documents
            .where((doc) => doc.data['details']['cost'] == searchItems.cost)
            .map((doc) {
          return Detail(
            name: doc.data['name'] ?? '',
            cost: doc.data['details']['cost'] ?? '',
            cid: doc.data['id'] ?? '',
          );
        }).toList();
      case '5':
        return snapshot.documents
            .where((doc) =>
                int.parse(doc.data['details']['cost']) >=
                int.parse(searchItems.cost))
            .map((doc) {
          return Detail(
            name: doc.data['name'] ?? '',
            cost: doc.data['details']['cost'] ?? '',
            cid: doc.data['id'] ?? '',
          );
        }).toList();
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
