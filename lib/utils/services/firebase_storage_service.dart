import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_template/utils/consts/durations.dart';

/// --- Template ---
class FirebaseStorageService {
  final _firebaseStorage = FirebaseStorage.instance;

  Future<String> uploadImageToFirebaseStorage({
    required String storagePath,
    required String path,
    required String imagePath,
  }) async {
    final Reference storageRef =
        _firebaseStorage.ref().child(storagePath).child(path);
    final uploadTask = await storageRef
        .putFile(File(imagePath))
        .timeout(const Duration(seconds: MyDurations.timeOut));
    final TaskSnapshot downloadUrl = uploadTask;
    return downloadUrl.ref
        .getDownloadURL()
        .timeout(const Duration(seconds: MyDurations.timeOut));
  }

  Future<List<String>> getImagesFromFirebaseStorage({
    required String storagePath,
    required String path,
  }) async {
    final Reference storageRef =
        _firebaseStorage.ref().child(storagePath).child(path);
    final ListResult results = await storageRef
        .listAll()
        .timeout(const Duration(seconds: MyDurations.timeOut));
    List<String> imagePaths = [];
    for (Reference reference in results.items) {
      imagePaths.add(await reference
          .getDownloadURL()
          .timeout(const Duration(seconds: MyDurations.timeOut)));
    }
    return imagePaths;
  }

  Future<void> deleteImageFromFirebaseStorage({
    required String storagePath,
    required String path,
  }) async {
    final Reference storageRef =
        _firebaseStorage.ref().child(storagePath).child(path);
    await storageRef
        .delete()
        .timeout(const Duration(seconds: MyDurations.timeOut));
  }
}
