import 'package:get_storage/get_storage.dart';

abstract class Storage {
  setString(String key, String value);

  String? getString(String key);

  remove(String key);

  removeAll();
}

class StorageService implements Storage {
  static final StorageService _instance = StorageService._internal();
  final _box = GetStorage();

  factory StorageService() {
    return _instance;
  }

  StorageService._internal();

  @override
  String? getString(String key) {
    return _box.read(key);
  }

  @override
  remove(String key) async {
    await _box.remove(key);
  }

  @override
  removeAll() async {
    await _box.erase();
  }

  @override
  setString(String key, String value) async {
    await _box.write(key, value);
  }
}
