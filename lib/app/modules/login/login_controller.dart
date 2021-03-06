import 'package:eshopee/app/core/values/sign_in_type.dart';
import 'package:eshopee/app/data/models/prshop_user.dart';
import 'package:eshopee/app/data/providers/user_provider.dart';
import 'package:eshopee/app/data/services/auth_service.dart';
import 'package:eshopee/app/routes/pages.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  RxBool isLoginProcessing = false.obs;
  final UserProvider _userProvider = UserProvider.instance;
  handleSignIn(SignInType signInType) async {
    UserCredential? userCredential;
    try {
      _onStartLoading();
      userCredential = await _signIn(signInType);
      if (userCredential != null) {
        await _onSignInSuccess(userCredential);
      } else {
        //await _onSignInFail();
      }
    } finally {
      _onFinishLoading(userCredential);
    }
  }

  Future<UserCredential?> _signIn(SignInType signInType) async {
    switch (signInType) {
      case SignInType.google:
        return await AuthenticationService.instance.signInWithGoogle();
      case SignInType.facebook:
        return null;
      // return await FirebaseAuth.instance.signInWithFacebook();

    }
  }

  Future<void> _onSignInSuccess(UserCredential userCredential) async {
    bool isExist = await _isUserExists(userCredential.user!.uid);
    if (isExist) {
      // await DataService.instance.loadUserData();
      // await DataService.instance.loadCategoryData();
    } else {
      await _createUser(userCredential.user);
    }
  }

  _isUserExists(String id) async => await _userProvider.isExists(id);
  _createUser(User? user) async {
    PRShopUser prshopUser = PRShopUser(
      user!.uid,
      name: user.displayName,
      email: user.email,
      address: 'not set',
    );
    await _userProvider.add(prshopUser);
  }

  void _onFinishLoading(UserCredential? userCredential) {
    isLoginProcessing.value = false;
    _navigatingToSuitableScreen(userCredential);
  }

  void _onStartLoading() => isLoginProcessing.value = true;

  void _navigatingToSuitableScreen(UserCredential? userCredential) {
    switch (userCredential) {
      case null:
        Get.offAllNamed(Routes.splash);
        break;
      default:
        Get.offAllNamed(Routes.home);
        break;
    }
  }
}
