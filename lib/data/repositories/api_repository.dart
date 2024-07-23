
import 'package:get/get.dart';

import '../../utils/app_constants.dart';
import '../apis/api_client.dart';

class ApiRepository{

  final ApiClient apiClient;

  ApiRepository({required this.apiClient});

  Future<Response> getAllBreedList() async {

    return await apiClient.getData(AppConstants.ALL_BREEDS_LIST);

  }

  Future<Response> getBreedImagesList(String catId) async {

    Map<String,String> query={
      "limit": "10",
      "breed_ids":catId,
      "api_key":AppConstants.BREEDS_API_KEY
    };

    return await apiClient.getDataWithQuery(AppConstants.BREED_IMAGES_LIST,query);

  }

}