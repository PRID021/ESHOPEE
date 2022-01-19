import 'package:firebase_core/firebase_core.dart';
import 'package:get_storage/get_storage.dart';

class AppStartService {
  AppStartService._privateConstructor();
  static final AppStartService instance = AppStartService._privateConstructor();
  initFireBase() async {
    await Firebase.initializeApp();
    print('Firebase initialized');
  }

  initGetStorage() async {
    GetStorage.init();
    print('Storage initialized');
  }
}
