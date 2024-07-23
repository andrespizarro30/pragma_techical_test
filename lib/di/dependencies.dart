
import 'package:get/get.dart';
import 'package:technicaltestpragma/controllers/breed_page_controler.dart';
import 'package:technicaltestpragma/data/repositories/api_repository.dart';

import '../data/apis/api_client.dart';
import '../utils/app_constants.dart';

Future<void> init() async{

  //api client
  Get.lazyPut(()=>ApiClient(appBaseUrl: AppConstants.BASE_URL));

  //repos
  Get.lazyPut(() => ApiRepository(apiClient: Get.find()));

  //controllers
  Get.lazyPut(() => BreedPageController(apiRepository: Get.find()));


}