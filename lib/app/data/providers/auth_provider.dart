import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthenticationProvider {
  AuthenticationProvider._privateConstructor();
  static final AuthenticationProvider instance = AuthenticationProvider._privateConstructor();
  late GoogleSignIn _googleAuthProvider;

  Future<UserCredential?> signInWithGoogle() async {
    _googleAuthProvider = GoogleSignIn();
    final GoogleSignInAccount? googleSignInAccount = await _googleAuthProvider.signIn();
    if (googleSignInAccount != null) {
      final GoogleSignInAuthentication googleSignInAuthentication = await googleSignInAccount.authentication;
      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication.idToken,
      );
      return await _signInFirebase(credential: credential);
    }
  }

  Future<UserCredential?> _signInFirebase({required AuthCredential credential}) async {
    final UserCredential userCredential = await FirebaseAuth.instance.signInWithCredential(credential);
    return userCredential;
  }

  Future signOutGoogle() async {
    await _googleAuthProvider.signOut();
    signOutFirebase();
  }

  void signOutFirebase() {
    FirebaseAuth.instance.signOut();
  }
}
