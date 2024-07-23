
import 'package:get/get.dart';
import 'package:technicaltestpragma/data/apis/api_client.dart';
import 'package:technicaltestpragma/utils/app_constants.dart';

class ApiClientStub extends ApiClient {
  ApiClientStub() : super(appBaseUrl: '');

  @override
  Future<Response> getData(String uri) async {
    if (uri == AppConstants.ALL_BREEDS_LIST) {
      return Response(
        statusCode: 200,
        body: [
          {"name": "Siamese"},
          {"name": "Persian"}
        ],
      );
    }
    return Response(statusCode: 404);
  }

  @override
  Future<Response> getDataWithQuery(String uri, dynamic query) async {

    if (uri == AppConstants.BREED_IMAGES_LIST) {
      return Response(
        statusCode: 200,
        body: [
          {"url": "https://example.com/image1.jpg"},
          {"url": "https://example.com/image2.jpg"}
        ],
      );
    }
    return Response(statusCode: 404);
  }
}