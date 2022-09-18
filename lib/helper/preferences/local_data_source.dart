abstract class LocalDataSource {
  Future writeSecureData(String key, String value);
  Future readSecureData(String key);
  Future deleteSecureData(String key);
  Future deleteAllData();
}
