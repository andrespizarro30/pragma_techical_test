
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:technicaltestpragma/data/repositories/api_repository.dart';

import 'stubs/api_client_stub.dart';

void main() {
  late ApiRepository apiRepository;
  late ApiClientStub apiClientStub;

  setUp(() {

    Get.testMode = true;

    apiClientStub = ApiClientStub();

    apiRepository = ApiRepository(apiClient: apiClientStub);
  });

  group('ApiRepository', () {
    test('should fetch all breed list', () async {

      Response response = await apiRepository.getAllBreedList();

      expect(response.statusCode, 200);
      expect(response.body.length, 2);
      expect(response.body[0]['name'], 'Siamese');
      expect(response.body[1]['name'], 'Persian');
    });

    test('should fetch breed images list', () async {

      Response response = await apiRepository.getBreedImagesList('someCatId');

      expect(response.statusCode, 200);
      expect(response.body.length, 2);
      expect(response.body[0]['url'], 'https://example.com/image1.jpg');
      expect(response.body[1]['url'], 'https://example.com/image2.jpg');
    });
  });
}