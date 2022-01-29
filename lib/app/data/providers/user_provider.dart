import 'package:eshopee/app/core/utils/config_reader.dart';
import 'package:eshopee/app/core/values/db_type.dart';
import 'package:eshopee/app/data/models/firestoration.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:eshopee/app/data/models/prshop_user.dart';

class UserProvider implements Firestoration<String, PRShopUser> {
  UserProvider._privateConstructor();
  static final UserProvider instance = UserProvider._privateConstructor();

  @override
  Future<PRShopUser> add(PRShopUser prshopUser) async {
    await FirebaseFirestore.instance.collection(collectionPath).doc(prshopUser.id).set(prshopUser.toJson());
    return prshopUser;
  }

  @override
  String get collectionPath => ConfigReader.dbUsrCollection;

  @override
  Future<PRShopUser> delete(String id) {
    throw UnimplementedError();
  }

  @override
  Future<PRShopUser> fetch(String id) {
    throw UnimplementedError();
  }

  @override
  Future<PRShopUser> update(String id, PRShopUser obj) {
    throw UnimplementedError();
  }

  Future<bool> isExists(String id) async {
    switch (ConfigReader.dbType) {
      case DB_TYPE.firebase:
        var doc = await FirebaseFirestore.instance.collection(collectionPath).doc(id).get();
        return doc.exists;
      default:
        return false;
    }
  }
}
