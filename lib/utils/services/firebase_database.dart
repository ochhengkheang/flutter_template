import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

/// --- Template ---
class FirestoreDatabaseService {
  final FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

  Stream<DocumentSnapshot<Map<String, dynamic>>> buildStream(
    String collectionName,
    String userId,
  ) {
    return firebaseFirestore.collection(collectionName).doc(userId).snapshots();
  }

  Future<void> create(
      User user, String collectionName, Map<String, dynamic> data,
      {bool merge = true}) async {
    await firebaseFirestore
        .collection(collectionName)
        .doc(user.uid)
        .set(data, SetOptions(merge: merge));
  }

  Future<void> update(
      User user, String collectionName, Map<String, dynamic> data) async {
    DocumentReference userDocRef =
        firebaseFirestore.collection(collectionName).doc(user.uid);
    await userDocRef.update(data);
  }

  Future<void> updateField(
      User user, String collectionName, String key, String data) async {
    DocumentReference userDocRef =
        firebaseFirestore.collection(collectionName).doc(user.uid);
    await userDocRef.update({
      key: data,
    });
  }

  Future<void> delete(User user, String collectionName) async {
    await firebaseFirestore.collection(collectionName).doc(user.uid).delete();
  }
}
