
import 'package:firebase_database/firebase_database.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:technicaltestpragma/controllers/breed_page_controler.dart';
import 'package:technicaltestpragma/controllers/cats_fb_controller.dart';
import 'package:technicaltestpragma/data/repositories/api_repository.dart';
import 'package:technicaltestpragma/data/repositories/fb_repository.dart';

import '../data/apis/api_client.dart';
import '../utils/app_constants.dart';
import '../utils/use_sharedpreferences.dart';

Future<void> init() async{

  final sharedPreferences = await SharedPreferences.getInstance();
  Get.lazyPut(()=> sharedPreferences);

  //Firebase instances
  final firebaseDatabase = FirebaseDatabase.instance;
  Get.lazyPut(()=> firebaseDatabase);

  //Use Sharedpreferences
  Get.lazyPut(()=>UseSharedPreference(sharedPreferences: Get.find()));

  //api client
  Get.lazyPut(()=>ApiClient(appBaseUrl: AppConstants.BASE_URL));

  //repos
  Get.lazyPut(() => ApiRepository(apiClient: Get.find()));
  Get.lazyPut(() => FBRepository(useSharedPreference: Get.find(),firebaseDatabase: Get.find()));

  //controllers
  Get.lazyPut(() => BreedPageController(apiRepository: Get.find()));
  Get.lazyPut(() => CatsFBController(fbRepository: Get.find()));



}