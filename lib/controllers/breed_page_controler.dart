import 'package:get/get.dart';
import 'package:technicaltestpragma/data/repositories/api_repository.dart';
import 'package:technicaltestpragma/models/CatsBreedModel.dart';

class BreedPageController extends GetxController{

  final ApiRepository apiRepository;

  BreedPageController({
    required this.apiRepository
  });

  List<CatBreedModel> _catsBreedList = [];
  List<CatBreedModel> get catsBreedList => _catsBreedList;
  set catsBreedList(List<CatBreedModel> _catsBreedList) {}

  List<CatBreedModel> _catsBreedListCopy = [];
  List<CatBreedModel> get catsBreedListCopy => _catsBreedListCopy;
  set catsBreedListCopy(List<CatBreedModel> _catsBreedListCopy) {}

  bool _loading = false;
  bool get loading => _loading;

  Future<void> getBreedList()async{

    _loading=true;
    update();

    Response response = await apiRepository.getAllBreedList();
    if(response.statusCode == 200){
      _catsBreedList=[];
      _catsBreedList.addAll(CatsBreedListModel.fromJson(response.body).catBreedsList);
      _catsBreedListCopy=_catsBreedList;
      _loading=false;
      update();
    }else{

    }

  }

  void filterCatBreedList(String query){

    final filtered = Get.find<BreedPageController>().catsBreedListCopy.where((item) {
      return item.name!.toLowerCase().contains(query.toLowerCase());
    }).toList();

    if(query!=""){
      _catsBreedList = filtered;
    }else{
      _catsBreedList = _catsBreedListCopy;
    }

    update();
  }


}