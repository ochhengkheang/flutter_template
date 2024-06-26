import 'package:cloud_firestore/cloud_firestore.dart';

/// --- Template ---
class FirestoreDatabaseService {
  final FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

  /// --- Collection
  Stream<QuerySnapshot<Map<String, dynamic>>> buildStreamCollection({
    required String collectionName,
  }) {
    return firebaseFirestore.collection(collectionName).snapshots();
  }

  /// Specify the colllectionRef
  /// For example:
  /// colllectionRef: firebaseFirestore.collection(path).doc(docId).collection(path);
  Stream<QuerySnapshot> buildStreamCollectionCustomRef(
      {required CollectionReference colllectionRef}) {
    return colllectionRef.snapshots();
  }

  Stream<QuerySnapshot<Map<String, dynamic>>>
      buildStreamQueryDataFromCollection({
    required String collectionName,
    required String fieldName,
    bool descending = false,
    limit = 1,
  }) {
    return firebaseFirestore
        .collection(collectionName)
        .orderBy(fieldName, descending: descending)
        .limit(limit)
        .snapshots();
  }

  Stream<QuerySnapshot<Map<String, dynamic>>>
      buildStreamQueryDataFromCollectionCustomRef(
          {required Query<Map<String, dynamic>> qurey}) {
    return qurey.snapshots();
  }

  Future<QuerySnapshot> getDataFromCollection({
    required String collectionName,
  }) async {
    return await firebaseFirestore.collection(collectionName).get();
  }

  /// Specify the colllectionRef
  /// For example:
  /// colllectionRef: firebaseFirestore.collection(path).doc(docId).collection(path);
  Future<QuerySnapshot> getDataFromCollectionCustomRef({
    required CollectionReference colllectionRef,
  }) async {
    return colllectionRef.get();
  }

  Future<QuerySnapshot> queryDataFromCollection({
    required String collectionName,
    required String fieldName,
    bool descending = false,
    limit = 1,
  }) async {
    return await firebaseFirestore
        .collection(collectionName)
        .orderBy(fieldName, descending: descending)
        .limit(limit)
        .get();
  }

  Future<QuerySnapshot<Map<String, dynamic>>> queryDataFromCollectionCustomRef(
      {required Query<Map<String, dynamic>> qurey}) async {
    return qurey.get();
  }

  /// --- Document
  Stream<DocumentSnapshot<Map<String, dynamic>>> buildStreamDocument({
    required String collectionName,
    required String docId,
  }) {
    return firebaseFirestore.collection(collectionName).doc(docId).snapshots();
  }

  /// Specify the docRef
  /// For example:
  /// docRef: firebaseFirestore.collection(path).doc(docId).collection(path).doc(docId);
  Stream<DocumentSnapshot> buildStreamDocumentCustomRef(
      {required DocumentReference docRef}) {
    return docRef.snapshots();
  }

  Future<DocumentSnapshot> getDataFromDocument({
    required String collectionName,
  }) async {
    return await firebaseFirestore.collection(collectionName).doc().get();
  }

  /// Specify the docRef
  /// For example:
  /// docRef: firebaseFirestore.collection(path).doc(docId).collection(path).doc(docId);
  Future<DocumentSnapshot> getDataFromDocumentCustomRef({
    required DocumentReference docRef,
  }) async {
    return docRef.get();
  }

  Future<void> createDocument({
    required String collectionName,
    required String docId,
    required Map<String, dynamic> data,
    bool merge = false,
  }) async {
    await firebaseFirestore
        .collection(collectionName)
        .doc(docId)
        .set(data, SetOptions(merge: merge));
  }

  /// Specify the docRef
  /// For example:
  /// docRef: firebaseFirestore.collection(path).doc(docId).collection(path).doc(docId);
  Future<void> createDocumentCustomRef({
    required DocumentReference docRef,
    required Map<String, dynamic> data,
    bool merge = false,
  }) async {
    await docRef.set(data, SetOptions(merge: merge));
  }

  Future<void> updateDocument({
    required String collectionName,
    required String docId,
    required Map<String, dynamic> data,
  }) async {
    await firebaseFirestore.collection(collectionName).doc(docId).update(data);
  }

  /// Specify the docRef
  /// For example:
  /// docRef: firebaseFirestore.collection(path).doc(docId).collection(path).doc(docId);
  Future<void> updateDocumentCustomRef({
    required DocumentReference docRef,
    required Map<String, dynamic> data,
  }) async {
    await docRef.update(data);
  }

  Future<void> createDocumentField({
    required String collectionName,
    required String docId,
    required String key,
    required dynamic data,
  }) async {
    await firebaseFirestore.collection(collectionName).doc(docId).set({
      key: data,
    });
  }

  /// Specify the docRef
  /// For example:
  /// docRef: firebaseFirestore.collection(path).doc(docId).collection(path).doc(docId);
  Future<void> createDocumentFieldCustomRef({
    required DocumentReference docRef,
    required String key,
    required dynamic data,
  }) async {
    await docRef.set({
      key: data,
    });
  }

  Future<void> updateDocumentField({
    required String collectionName,
    required String docId,
    required String key,
    required dynamic data,
  }) async {
    await firebaseFirestore.collection(collectionName).doc(docId).update({
      key: data,
    });
  }

  /// Specify the docRef
  /// For example:
  /// docRef: firebaseFirestore.collection(path).doc(docId).collection(path).doc(docId);
  Future<void> updateDocumentFieldCustomRef({
    required DocumentReference docRef,
    required String key,
    required dynamic data,
  }) async {
    await docRef.update({
      key: data,
    });
  }

  Future<void> deleteDocument({
    required String collectionName,
    required String docId,
  }) async {
    await firebaseFirestore.collection(collectionName).doc(docId).delete();
  }

  /// Specify the docRef
  /// For example:
  /// docRef: firebaseFirestore.collection(path).doc(docId).collection(path).doc(docId);
  Future<void> deleteDocumentCustomRef({
    required DocumentReference docRef,
  }) async {
    await docRef.delete();
  }
}
