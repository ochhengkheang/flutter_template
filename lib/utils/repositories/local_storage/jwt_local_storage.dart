import 'package:flutter_template/utils/consts/services/local_storage_constant.dart';
import 'package:flutter_template/utils/repositories/services/share_perference_service.dart';

class MyJwtLocalStorage {
  SharePreferenceService localStorageCore = SharePreferenceService();

  Future<bool> existJwtToken() async {
    return await localStorageCore.exist(MyJwtTokenConstant.accessTokenKey);
  }

  Future<bool> existRefreshToken() async {
    return await localStorageCore.exist(MyJwtTokenConstant.refreshTokenKey);
  }

  Future<void> saveAccessToken(String token) async {
    await localStorageCore.save(MyJwtTokenConstant.accessTokenKey, token);
  }

  Future<void> saveRefreshToken(String token) async {
    await localStorageCore.save(MyJwtTokenConstant.refreshTokenKey, token);
  }

  Future<String> getAccessToken() async {
    return await localStorageCore.read(MyJwtTokenConstant.accessTokenKey);
  }

  Future<String> getRefreshToken() async {
    return await localStorageCore.read(MyJwtTokenConstant.refreshTokenKey);
  }

  Future<void> clearJwtTokens() async {
    await localStorageCore.remove(MyJwtTokenConstant.accessTokenKey);
    await localStorageCore.remove(MyJwtTokenConstant.refreshTokenKey);
  }
}
