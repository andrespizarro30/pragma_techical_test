import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';

import 'package:technicaltestpragma/controllers/breed_page_controler.dart';
import 'package:technicaltestpragma/models/CatsBreedModel.dart';

import 'stubs/api_client_stub.dart';
import 'stubs/api_repository_stub.dart';

void main() {
  late BreedPageController controller;
  late ApiRepositoryStub apiRepositoryStub;
  late ApiClientStub apiClientStub;

  setUp(() {

    Get.testMode = true;

    apiClientStub = ApiClientStub();
    apiRepositoryStub = ApiRepositoryStub(apiClientStub);

    Get.put(apiClientStub);
    Get.put(apiRepositoryStub);
    Get.put(BreedPageController(apiRepository: apiRepositoryStub));

    controller = Get.find<BreedPageController>();
  });

  group('BreedPageController', () {
    test('should fetch and set breed list', () async {

      await controller.getBreedList();

      expect(controller.loading, false);
      expect(controller.catsBreedList.length, 2);
      expect(controller.catsBreedList[0].name, 'Siamese');
      expect(controller.catsBreedListCopy.length, 2);
      expect(controller.catsBreedListCopy[0].name, 'Siamese');
    });

    test('should filter cat breed list based on query', () {

      final catBreedList = [
        CatBreedModel(name: 'Siamese'),
        CatBreedModel(name: 'Persian'),
      ];
      controller.catsBreedListCopy = catBreedList;
      controller.catsBreedList = catBreedList;

      controller.filterCatBreedList('sia');

      expect(controller.catsBreedList.length, 1);
      expect(controller.catsBreedList[0].name, 'Siamese');

      controller.filterCatBreedList('');

      expect(controller.catsBreedList.length, 2);
    });
  });
}