
import 'package:get/get.dart';
import 'package:technicaltestpragma/data/repositories/fb_repository.dart';

class CatsFBController extends GetxController{

  final FBRepository fbRepository;

  CatsFBController({
    required this.fbRepository
  });

  Map<String, int> _likes = Map();
  Map<String, int> get likes => _likes;

  void sentLike(String catId, String catBreed){
    fbRepository.sentLike(catId, catBreed);
    getTotalLikes(catId);
  }

  void disLike(String catId){
    fbRepository.disLike(catId);
    getTotalLikes(catId);
  }

  bool? getLike(String catId){
    getTotalLikes(catId);
    return fbRepository.getLike(catId);
  }

  void getTotalLikes(String catId) async{
    int likesNo = await fbRepository.getTotalLikes(catId);

    if(_likes.containsKey(catId)){
      _likes.update(catId, (value){
        return likesNo;
      });
    }else{
      _likes.putIfAbsent(catId, (){
        return likesNo;
      });
    }

    update();

  }

  void listenLikes(){
    fbRepository.listenLikes(updateListenLikes);
  }

  void updateListenLikes(String catId,int likes){

    if(_likes.containsKey(catId)){
      _likes.update(catId, (value){
        return likes;
      });
    }else{
      _likes.putIfAbsent(catId, (){
        return likes;
      });
    }

    update();
  }

}