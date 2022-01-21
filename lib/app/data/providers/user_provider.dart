import 'package:enum_to_string/enum_to_string.dart';
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
  // TODO: implement collectionPath
  String get collectionPath => throw UnimplementedError();

  @override
  Future<PRShopUser> delete(String id) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<PRShopUser> fetch(String id) {
    // TODO: implement fetch
    throw UnimplementedError();
  }

  @override
  Future<PRShopUser> update(String id, PRShopUser obj) {
    // TODO: implement update
    throw UnimplementedError();
  }

  Future<bool> isExists(String id) async {
    DB_TYPE? dbType = EnumToString.fromString(DB_TYPE.values, ConfigReader.dbType);
    switch (dbType) {
      case DB_TYPE.firestore:
        var doc = await FirebaseFirestore.instance.collection(collectionPath).doc(id).get();
        return doc.exists;
      default:
        return false;
    }
  }
}
