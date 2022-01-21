import 'package:eshopee/app/routes/pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
