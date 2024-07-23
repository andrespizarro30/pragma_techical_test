import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:technicaltestpragma/controllers/breed_details_page_controller.dart';
import 'package:technicaltestpragma/controllers/breed_page_controler.dart';
import 'package:technicaltestpragma/controllers/cats_fb_controller.dart';
import 'package:technicaltestpragma/push_notifications/access_token_firebase.dart';
import 'package:technicaltestpragma/routes/route_helper.dart';

import 'di/dependencies.dart' as dep;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await dep.init();

  AccessTokenFirebase accessTokenFirebase = AccessTokenFirebase();
  var accessToken = await accessTokenFirebase.getAccessToken();

  final sharedPreferences = await SharedPreferences.getInstance();
  sharedPreferences.setString("fcmAccessToken", accessToken);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BreedPageController>(builder: (_){
      return GetBuilder<BreedDetailsPageController>(builder: (_){
        return GetBuilder<CatsFBController>(builder: (_){
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            initialRoute: RouteHelper.getSplash(),
            getPages: RouteHelper.routes,
          );
        });
      });
    });
  }
}