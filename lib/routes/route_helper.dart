import 'package:get/get.dart';
import 'package:technicaltestpragma/pages/home/breeds_page.dart';
import 'package:technicaltestpragma/pages/splash/splash_page.dart';

class RouteHelper{

  static const String splash = "/splash";
  static const String home = "/home";
  static const String breedsPageDetails = "/breedDetails";


  static String getSplash()=>'$splash';
  static String getHome()=>'$home';
  static String getBreedDetails()=>'$breedsPageDetails';


  static List<GetPage> routes =[
    GetPage(name: splash, page: ()=>SplashPage()),
    GetPage(name: home, page: ()=>BreedsPage()),
  ];

}