import 'package:eshopee/app/routes/pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app/data/services/app_start_service.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppStartService.instance.initGetStorage();
  runApp(PRSHOP());
}

class PRSHOP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'PRSHOP',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      getPages: AppPages.pages,
      defaultTransition: Transition.cupertino,
      initialRoute: Routes.splash,
    );
  }
}
