import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart';
import 'package:get_storage/get_storage.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'dart:convert';

class AppStartService {
  AppStartService._privateConstructor();
  static final AppStartService instance = AppStartService._privateConstructor();
  initFirebase() async {
    if (kIsWeb) {
      final String response = await rootBundle.loadString('config/setting.json');
      final dataConfig = await json.decode(response);
      await Firebase.initializeApp(
        options: FirebaseOptions(
          apiKey: dataConfig['firebaseWebAppConfig']['apiKey'],
          appId: dataConfig['firebaseWebAppConfig']['appId'],
          messagingSenderId: dataConfig['firebaseWebAppConfig']['messagingSenderId'],
          projectId: dataConfig['firebaseWebAppConfig']['projectId'],
        ),
      );
      print('Firebase initialized for web');
    } else {
      await Firebase.initializeApp();
      print('Firebase initialized for iOS/Android');
    }
  }

  initGetStorage() async {
    GetStorage.init();
    print('Storage initialized..!');
  }
}
