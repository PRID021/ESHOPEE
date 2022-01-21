import 'package:eshopee/app/core/utils/config_reader.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get_storage/get_storage.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class AppStartService {
  AppStartService._privateConstructor();
  static final AppStartService instance = AppStartService._privateConstructor();
  initFirebase() async {
    if (kIsWeb) {
      await Firebase.initializeApp(
        options: ConfigReader.firebaseOptionsForWebApp,
      );
      print('Firebase initialized for web');
    } else {
      await Firebase.initializeApp();
      print('Firebase initialized for IOS/Android');
    }
  }

  initGetStorage() async {
    GetStorage.init();
  }
}
