import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:technicaltestpragma/controllers/breed_page_controler.dart';
import 'package:technicaltestpragma/routes/route_helper.dart';

import 'di/dependencies.dart' as dep;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BreedPageController>(builder: (_){
      return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: RouteHelper.getSplash(),
        getPages: RouteHelper.routes,
      );
    });
  }
}