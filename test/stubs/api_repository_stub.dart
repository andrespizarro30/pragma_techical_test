
import 'package:get/get.dart';
import 'package:technicaltestpragma/data/apis/api_client.dart';
import 'package:technicaltestpragma/data/repositories/api_repository.dart';

class ApiRepositoryStub extends ApiRepository {
  ApiRepositoryStub(ApiClient apiClient) : super(apiClient: apiClient);

  @override
  Future<Response> getAllBreedList() async {
    return Response(statusCode: 200, body: [{'name': 'Siamese'},{'name': 'Criollo'}]);
  }

  @override
  Future<Response> getBreedImagesList(String catId) async {

    return Response(
      statusCode: 200,
      body: [
        {"url": "https://example.com/image1.jpg"},
        {"url": "https://example.com/image2.jpg"}
      ],
    );
  }

}