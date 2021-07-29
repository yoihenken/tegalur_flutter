import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {
  //collection refrence
  static FirebaseFirestore collect = FirebaseFirestore.instance;

  static final snapshotFireshot = collect.collection('feedback').orderBy('name').snapshots();

  static Future<void> addData(String name, String email, String comment) async {
    await collect
        .collection('feedback')
        .add({'name': name, 'email': email, 'comment': comment});
  }

  static Future<bool> editData(String name, String email, String comment,
      DocumentSnapshot currentDoc) async {
    await collect.collection('feedback').doc(currentDoc.id).update({
      'name': name,
      'email': email,
      'comment': comment
    }).whenComplete(() => print('Update Success!'));
  }

  static Future<void> deleteData(DocumentSnapshot documentSnapshot) async {
    await collect.collection('feedback').doc(documentSnapshot.id).delete();
  }
}
