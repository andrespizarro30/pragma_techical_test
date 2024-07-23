import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../routes/route_helper.dart';
import '../../utils/app_colors.dart';
import '../../utils/dimensions.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> with TickerProviderStateMixin{

  late Animation<double> animation;
  late AnimationController animationController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    animationController = AnimationController(
        vsync: this,
        duration: const Duration(seconds: 1)
    )..forward();

    animation = CurvedAnimation(
        parent: animationController,
        curve: Curves.linear
    );

    Timer(
        const Duration(milliseconds: 2000),
            ()=>Get.offNamed(RouteHelper.getHome())
    );

  }

  @override
  Widget build(BuildContext context) {
    return Theme(
        data: ThemeData(
            fontFamily: "Balon"
        ),
        child: Scaffold(
          backgroundColor: AppColors.appBeige,
          body: Stack(
            children: [
              Positioned(
                  top: Dimensions.screenHeight * 0.3,
                  child: ScaleTransition(
                    scale: animation,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: Dimensions.width40),
                      child: Text(
                        "CatBreeds",
                        style: TextStyle(
                            fontSize: 51
                        ),
                      ),
                    ),
                  )
              ),
              Positioned(
                  bottom: Dimensions.screenHeight * 0.1,
                  child: ScaleTransition(
                    scale: animation,
                    child: Semantics(
                      label: "Logo de inicio Cat Breeds",
                      child: Center(
                        child: Image.asset(
                          "assets/images/cat_logo.jpg",
                          width: Dimensions.splashImg,
                        ),
                      ),
                    ),
                  )
              )
            ],
          ),
        ));
  }
}
