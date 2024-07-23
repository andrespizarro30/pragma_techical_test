
import 'package:shared_preferences/shared_preferences.dart';

class UseSharedPreference{

  SharedPreferences sharedPreferences;

  UseSharedPreference({required this.sharedPreferences});

  void saveLike(String catId){
    sharedPreferences.setBool("Like${catId}", true);
  }

  void quiteLike(String catId){
    sharedPreferences.remove("Like${catId}");
  }

  bool? getLikeSaved(String catId){
    return sharedPreferences.containsKey("Like${catId}") ? sharedPreferences.getBool("Like${catId}") : false;
  }

}