
import 'package:get/get.dart';

import '../../utils/app_constants.dart';
import '../apis/api_client.dart';

class ApiRepository{

  final ApiClient apiClient;

  ApiRepository({required this.apiClient});

  Future<Response> getAllProductsList() async {

    return await apiClient.getData(AppConstants.ALL_BREEDS_LIST);

  }

}