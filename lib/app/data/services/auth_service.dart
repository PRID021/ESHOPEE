import 'package:eshopee/app/core/values/sign_in_type.dart';
import 'package:eshopee/app/data/providers/auth_provider.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthenticationService {
  AuthenticationService._privateConstructor();
  static final AuthenticationService instance = AuthenticationService._privateConstructor();
  static final FirebaseAuth _auth = FirebaseAuth.instance;
  User? get currentUser => _auth.currentUser;
  bool get isSignedIn => currentUser != null;
  SignInType _signInType = SignInType.google;
  SignInType get signInType => _signInType;

  Future<UserCredential?> signInWithGoogle() async {
    _signInType = SignInType.google;
    return await AuthenticationProvider.instance.signInWithGoogle();
  }
}
