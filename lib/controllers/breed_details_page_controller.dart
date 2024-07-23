
import 'package:get/get.dart';

import '../data/repositories/api_repository.dart';
import '../models/CatsBreedImagesModel.dart';

class BreedDetailsPageController extends GetxController{

  final ApiRepository apiRepository;

  BreedDetailsPageController({
    required this.apiRepository
  });

  List<CatsBreedImagesModel> _catsBreedImageList = [];
  List<CatsBreedImagesModel> get catsBreedImageList => _catsBreedImageList;

  bool _loading = false;
  bool get loading => _loading;

  Future<void> getBreedImagesList(String catId)async{

    _loading=true;
    update();

    Response response = await apiRepository.getBreedImagesList(catId);
    if(response.statusCode == 200){
      _catsBreedImageList=[];
      _catsBreedImageList.addAll(CatsBreedImagesListModel.fromJson(response.body).catBreedsImagesList);
      _loading=false;
      update();
    }else{

    }

  }



}