import 'package:get_storage/get_storage.dart';

class LoaclStorageService {
  static Future<void> init() async {
    await GetStorage.init();
  }
}