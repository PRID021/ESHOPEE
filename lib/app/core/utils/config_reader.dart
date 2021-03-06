import 'dart:convert';
import 'package:enum_to_string/enum_to_string.dart';
import 'package:eshopee/app/core/values/db_type.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart';

abstract class ConfigReader {
  static Map<String, dynamic>? _config;

  static Future<void> initialize() async {
    final configString = await rootBundle.loadString('assets/config/setting.json');
    _config = json.decode(configString) as Map<String, dynamic>;
  }

  static FirebaseOptions get firebaseOptionsForWebApp {
    return FirebaseOptions(
      apiKey: _config!['firebaseWebAppConfig']['apiKey'],
      appId: _config!['firebaseWebAppConfig']['appId'],
      messagingSenderId: _config!['firebaseWebAppConfig']['messagingSenderId'],
      projectId: _config!['firebaseWebAppConfig']['projectId'],
    );
  }

  static DB_TYPE? get dbType => EnumToString.fromString(DB_TYPE.values, _config!['dbType']['type']);
  static String get dbUsrCollection => _config!['dbType']['dbUsrCollection'];
}
