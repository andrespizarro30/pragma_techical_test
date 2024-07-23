import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';
import 'package:technicaltestpragma/controllers/breed_details_page_controller.dart';

import '../models/CatsBreedImagesModel.dart';
import '../utils/app_colors.dart';
import '../utils/dimensions.dart';
import 'image_error_handler.dart';

class PagerViewScreen extends StatefulWidget {

  String catId;

  PagerViewScreen({super.key,
    required this.catId
  });

  @override
  State<PagerViewScreen> createState() => _PagerViewScreenState(catId: this.catId);
}

class _PagerViewScreenState extends State<PagerViewScreen> {

  String catId;

  _PagerViewScreenState({
    required this.catId
  });

  PageController pageController = PageController(viewportFraction: 0.85);
  var _currPageValue = 0.0;
  double _scaleFactor = 0.8;
  double _height = Dimensions.pageViewContainer;

  @override
  void initState() {
    super.initState();

    SchedulerBinding.instance.addPostFrameCallback((_) async{
      pageController.addListener(() {
        setState(() {
          _currPageValue = pageController.page!;
        });
      });
      _loadResources(catId);
    });

  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BreedDetailsPageController>(builder: (controller){
      return controller.catsBreedImageList.isNotEmpty ?
      Column(
        children: [
          Container(
            color: AppColors.appWhite,
            height: Dimensions.pageView * 1.1,
            child: PageView.builder(
                controller: pageController,
                itemCount: controller.catsBreedImageList.length,
                itemBuilder: (context, index){
                  return Container(
                      child: _buildPageItem(index,controller.catsBreedImageList![index])
                  );
                }
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: Dimensions.width20,right: Dimensions.width20),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  DotsIndicator(
                    dotsCount: controller.catsBreedImageList.length,
                    position: _currPageValue.round(),
                    mainAxisSize: MainAxisSize.min,
                    decorator: DotsDecorator(
                      color: Colors.grey,
                      activeColor: AppColors.appBlue,
                      size: const Size.square(9.0),
                      activeSize: const Size(18.0, 9.0),
                      activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ) :
      Padding(
        padding: EdgeInsets.only(left: Dimensions.width20,right: Dimensions.width20),
        child: Column(
          children: [
            Container(
                width: Dimensions.screenWidth,
                height: Dimensions.pageView,
                child: Shimmer.fromColors(
                    baseColor: Colors.grey.shade400,
                    highlightColor: Colors.white,
                    child: Container(
                        width:Dimensions.screenWidth,
                        height: Dimensions.pageView,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade400
                        )
                    )
                )
            ),
            SizedBox(height: Dimensions.height10,)
          ],
        ),
      );
    });
  }

  Widget _buildPageItem(int index,CatsBreedImagesModel catsImages) {

    Matrix4 matrix = new Matrix4.identity();

    if(index==_currPageValue.floor()){
      var currScale = 1 - (_currPageValue-index)*(1-_scaleFactor);
      var currTrans = _height * (1-currScale)/2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, currTrans, 0);
    }else if (index == _currPageValue.floor()+1){
      var currScale = _scaleFactor+(_currPageValue-index+1)*(1-_scaleFactor);
      var currTrans = _height * (1-currScale)/2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, currTrans, 0);
    }else if (index == _currPageValue.floor()-1){
      var currScale = 1 - (_currPageValue-index)*(1-_scaleFactor);
      var currTrans = _height * (1-currScale)/2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, currTrans, 0);
    }else{
      var currScale = 0.8;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, _height*(1-_scaleFactor)/2, 1);
    }

    return Transform(
      transform: matrix,
      child: Container(
          height: Dimensions.pageViewContainer * 0.9,
          width: Dimensions.screenWidth * 0.8,
          margin: EdgeInsets.only(left: Dimensions.width10,right: Dimensions.width10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Dimensions.radius30),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(Dimensions.radius30),
            child: ImageWithErrorHandler(imageUrl: catsImages.url!),
          ),
      )
    );
  }

  Future<void> _loadResources(String catId) async{
    await Get.find<BreedDetailsPageController>().getBreedImagesList(catId);
  }
}
