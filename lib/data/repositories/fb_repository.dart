import 'package:firebase_database/firebase_database.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:technicaltestpragma/utils/app_constants.dart';
import 'package:technicaltestpragma/utils/use_sharedpreferences.dart';

import '../../push_notifications/send_notification.dart';

class FBRepository{

  final UseSharedPreference useSharedPreference;
  final FirebaseDatabase firebaseDatabase;
  final SendNotification sendNotification;

  FBRepository({required this.useSharedPreference,required this.firebaseDatabase,required this.sendNotification});

  void sentLike(String catId, String catBreed) async{

    Map<String,int> likeData = {
      "likes": 1,
    };

    DatabaseReference catsRef = FirebaseDatabase.instance.ref().child(AppConstants.FB_CATS_REPO).child(catId);

    catsRef.once().then((snapShot){
    if(snapShot.snapshot.value == null){
      catsRef.set(likeData);
    }else{
      int likes = (snapShot.snapshot.value as Map)["likes"];
      likes += 1;
      likeData["likes"] = likes;
      catsRef.set(likeData);
    }
    });

    useSharedPreference.saveLike(catId);

    sendNotification.sendLikeNotification(catBreed);

  }

  void disLike(String catId) async{

    Map<String,int> likeData = {
      "likes": 0,
    };

    DatabaseReference catsRef = FirebaseDatabase.instance.ref().child(AppConstants.FB_CATS_REPO).child(catId);

    catsRef.once().then((snapShot){
      int likes = (snapShot.snapshot.value as Map)["likes"];
      likes -= 1;
      likeData["likes"] = likes;
      catsRef.set(likeData);
    });

    useSharedPreference.quiteLike(catId);

  }

  bool? getLike(String catId){
    return useSharedPreference.getLikeSaved(catId);
  }

  Future<int> getTotalLikes(String catId) async{
    int likes = 0;
    DatabaseReference catsRef = await FirebaseDatabase.instance.ref().child(AppConstants.FB_CATS_REPO).child(catId);
    await catsRef.once().then((snapShot){
      if(snapShot.snapshot.value != null){
        likes = (snapShot.snapshot.value as Map)["likes"];
      }
    });
    return likes;
  }

  Function(String, int)? updateListenLikes;

  void listenLikes(Function(String, int) updateListenLikes){

    this.updateListenLikes = updateListenLikes;

    DatabaseReference catsRef = FirebaseDatabase.instance.ref().child(AppConstants.FB_CATS_REPO);

    catsRef.onChildAdded.listen(_onChildAdded);
    catsRef.onChildChanged.listen(_onChildChanged);

  }

  void _onChildAdded(DatabaseEvent event) {
    var catId = event.snapshot.key;
    var likes = event.snapshot.value;
    String a = "";
  }

  void _onChildChanged(DatabaseEvent event) {
    var catId = event.snapshot.key;
    var likes = (event.snapshot.value as Map)["likes"];
    updateListenLikes!(catId.toString(),likes);
  }


}