import 'local_storage_service.dart';

class LocalStorage {
  static String _komiJwt = "komi_jwt";
  static String _komiToken = "komi_token";
  static String _komiUserInfo = "komi_userInfo";
  static StorageService _storage = StorageService();

  static setJWT(String jwt) async {
    await _storage.setString(_komiJwt, jwt);
  }

  static String? getJWT() {
    return _storage.getString(_komiJwt);
  }

  static delJWT() async {
    await _storage.remove(_komiJwt);
  }

  static setToken(String jwt) async {
    await _storage.setString(_komiToken, jwt);
  }

  static String? getToken() {
    return _storage.getString(_komiToken);
  }

  static delToken() async {
    await _storage.remove(_komiToken);
  }
}
