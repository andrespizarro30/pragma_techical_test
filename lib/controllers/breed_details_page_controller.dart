
import 'package:get/get.dart';

import '../data/repositories/api_repository.dart';
import '../models/CatsBreedImagesModel.dart';

class BreedDetailsPageController extends GetxController{

  final ApiRepository apiRepository;

  BreedDetailsPageController({
    required this.apiRepository
  });

  Map<String,List<CatsBreedImagesModel>> _catsBreedImagesMap = {};
  Map<String,List<CatsBreedImagesModel>> get catsBreedImagesMap => _catsBreedImagesMap;

  bool _loading = false;
  bool get loading => _loading;

  Future<void> getBreedImagesList(String catId)async{

    _loading=true;
    update();

    Response response = await apiRepository.getBreedImagesList(catId);
    if(response.statusCode == 200){

      List<CatsBreedImagesModel> _catsBreedImageList=[];
      _catsBreedImageList.addAll(CatsBreedImagesListModel.fromJson(response.body).catBreedsImagesList);

      if(!_catsBreedImagesMap.containsKey(catId)){
        _catsBreedImagesMap.putIfAbsent(catId, (){
          return _catsBreedImageList;
        });
        update();
      }
      _loading=false;
    }else{

    }

  }



}