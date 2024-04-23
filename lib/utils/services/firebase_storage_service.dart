import 'dart:io';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_template/utils/consts/durations.dart';

/// --- Template ---
class FirebaseStorageService {
  final _firebaseStorage = FirebaseStorage.instance;

  Future<String> uploadImageToFirebaseStorageWithUser(
      User user, String imagePath, String storagePath) async {
    final Reference storageRef =
        _firebaseStorage.ref().child(storagePath).child(user.uid);
    final uploadTask = storageRef
        .putFile(File(imagePath))
        .timeout(const Duration(seconds: MyDurations.timeOut));
    final TaskSnapshot downloadUrl = await uploadTask;
    return downloadUrl.ref
        .getDownloadURL()
        .timeout(const Duration(seconds: MyDurations.timeOut));
  }

  Future<void> deleteImageFromFirebaseStorageWithUser(
      User user, String storagePath) async {
    final Reference storageRef =
        _firebaseStorage.ref().child(storagePath).child(user.uid);
    await storageRef
        .delete()
        .timeout(const Duration(seconds: MyDurations.timeOut));
  }
}
