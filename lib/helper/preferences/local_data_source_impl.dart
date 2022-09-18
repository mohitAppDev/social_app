import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import 'local_data_source.dart';
import 'local_data_source_exception.dart';

class LocalDataSourceImpl implements LocalDataSource {
  final _storage = const FlutterSecureStorage();

  @override
  Future writeSecureData(String key, String value) async {
    try {
      var writeData = await _storage.write(key: key, value: value);
      return writeData;
    } catch (e) {
      throw LocalDataSourceException('Cannot save user data in local !', e);
    }
  }

  @override
  Future readSecureData(String key) async {
    try {
      var readData = await _storage.read(key: key);
      return readData;
    } catch (e) {
      throw LocalDataSourceException('Cannot read user data', e);
    }
  }

  @override
  Future deleteSecureData(String key) async {
    try {
      var deleteData = await _storage.delete(key: key);
      return deleteData;
    } catch (e) {
      throw LocalDataSourceException('Cannot deleted user data', e);
    }
  }

  @override
  Future deleteAllData() async {
    try {
      var deleteData = await _storage.deleteAll();
      return deleteData;
    } catch (e) {
      throw LocalDataSourceException('Cannot deleted user data', e);
    }
  }
}
