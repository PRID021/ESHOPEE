import 'package:eshopee/app/core/utils/config_reader.dart';
import 'package:eshopee/app/core/values/db_type.dart';
import 'package:eshopee/app/core/values/sign_in_type.dart';
import 'package:eshopee/app/data/providers/auth_provider.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthenticationService {
  AuthenticationService._privateConstructor() {
    switch (ConfigReader.dbType) {
      case DB_TYPE.firebase:
        _auth = FirebaseAuth.instance;
        break;
      case DB_TYPE.localstorage:
        break;
      default:
        break;
    }
  }
  static final AuthenticationService instance = AuthenticationService._privateConstructor();
  static late final dynamic _auth;
  bool get isLogined => (currentUser != null) ? true : false;
  User? get currentUser => _auth.currentUser;
  bool get isSignedIn => currentUser != null;
  SignInType _signInType = SignInType.google;
  SignInType get signInType => _signInType;

  Future<UserCredential?> signInWithGoogle() async {
    _signInType = SignInType.google;
    return await AuthenticationProvider.instance.signInWithGoogle();
  }
}
