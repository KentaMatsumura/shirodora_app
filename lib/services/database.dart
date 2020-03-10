import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shirodoraapp/models/character.dart';
import 'package:shirodoraapp/models/detail.dart';

class DatabaseService {
  final String uid;

  DatabaseService({this.uid});

  final CollectionReference characterCollection =
      Firestore.instance.collection('character');

  // detail list from snapshot
  List<Detail> _detailListFromSnapshot(QuerySnapshot snapshot) {
    return snapshot.documents.map((doc) {
      return Detail(
        name: doc.data['name'] ?? '',
        cost: doc.data['details']['cost'] ?? '',
        cid: doc.data['id'] ?? '',
      );
    }).toList();
  }

  // characterDara from snapshot
  CharacterData _characterDataFromSnapshot(DocumentSnapshot snapshot) {
    return CharacterData(
      uid: uid,
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
  Stream<CharacterData> get characterData {
    return characterCollection
        .document(uid)
        .snapshots()
        .map(_characterDataFromSnapshot);
  }

  Future getDocuments() async {
    return await characterCollection.getDocuments();
  }
}
