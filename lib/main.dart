import 'package:eshopee/app/routes/pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app/data/services/app_start_service.dart';
void main() {
  runApp(const PRSHOP());
}
class PRSHOP extends StatelessWidget {
  const PRSHOP({Key? key}) : super(key: key);
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
