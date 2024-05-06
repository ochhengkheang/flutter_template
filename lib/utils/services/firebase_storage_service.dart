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

  /// Specify the storageRef
  /// For example:
  /// storageRef: _firebaseStorage.ref().child(path).child(path).child(path);
  Future<String> uploadImageToFirebaseStorageCustomRef({
    required Reference storageRef,
    required String imagePath,
  }) async {
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

  /// Specify the storageRef
  /// For example:
  /// storageRef: _firebaseStorage.ref().child(path).child(path).child(path);
  Future<List<String>> getImagesFromFirebaseStorageCustomRef({
    required Reference storageRef,
    required String storagePath,
    required String path,
  }) async {
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

  /// Specify the storageRef
  /// For example:
  /// storageRef: _firebaseStorage.ref().child(path).child(path).child(path);
  Future<void> deleteImageFromFirebaseStorageCustomRef({
    required Reference storageRef,
    required String path,
  }) async {
    await storageRef
        .delete()
        .timeout(const Duration(seconds: MyDurations.timeOut));
  }
}
