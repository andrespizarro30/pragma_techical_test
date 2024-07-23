
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:technicaltestpragma/controllers/breed_details_page_controller.dart';

import 'stubs/api_client_stub.dart';
import 'stubs/api_repository_stub.dart';

void main() {
  late BreedDetailsPageController controller;
  late ApiRepositoryStub apiRepositoryStub;
  late ApiClientStub apiClientStub;

  setUp(() {

    Get.testMode = true;

    apiClientStub = ApiClientStub();
    apiRepositoryStub = ApiRepositoryStub(apiClientStub);

    Get.put(apiClientStub);
    Get.put(apiRepositoryStub);
    Get.put(BreedDetailsPageController(apiRepository: apiRepositoryStub));

    controller = Get.find<BreedDetailsPageController>();
  });

  group('BreedDetailsPageController', () {
    test('should fetch and set breed images list', () async {

      await controller.getBreedImagesList("someCatId");

      expect(controller.loading, false);
      expect(controller.catsBreedImageList.length, 2);
      expect(controller.catsBreedImageList[0].url, 'https://example.com/image1.jpg');
      expect(controller.catsBreedImageList[1].url, 'https://example.com/image2.jpg');
    });

    test('loading should be true while fetching data', () async {

      var future = controller.getBreedImagesList("someCatId");

      expect(controller.loading, true);

      await future;

      expect(controller.loading, false);
    });
  });
}