import 'package:eshopee/app/core/utils/config_reader.dart';
import 'package:eshopee/app/data/services/app_start_service.dart';
import 'package:eshopee/app/app_widget.dart';
import 'package:flutter/material.dart';

Future<void> mainCommon(String env) async {
  WidgetsFlutterBinding.ensureInitialized();
  await ConfigReader.initialize();
  await AppStartService.instance.initFirebase();
  await AppStartService.instance.initGetStorage();
  switch (env) {
    case 'dev':
      //ConfigReader.setEnv('dev');
      break;
    case 'prod':
      //ConfigReader.setEnv('prod');
      break;
  }
  runApp(const PRSHOP());
}
