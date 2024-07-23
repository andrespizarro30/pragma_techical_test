import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:technicaltestpragma/controllers/cats_fb_controller.dart';
import 'package:technicaltestpragma/utils/use_sharedpreferences.dart';
import 'package:technicaltestpragma/widgets/small_text.dart';
import 'package:technicaltestpragma/widgets/starts_widget.dart';

import '../models/CatsBreedModel.dart';
import '../utils/app_colors.dart';
import '../utils/dimensions.dart';
import 'big_text.dart';

class CatDetailColumn extends StatelessWidget {

  final CatBreedModel cat;
  final int mediaStats;


  CatDetailColumn({
    super.key,
    required this.cat,
    required this.mediaStats,
  });

  @override
  Widget build(BuildContext context) {

    return GetBuilder<CatsFBController>(builder: (controller){
      return Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              BigText(text: cat.name!,size: Dimensions.font16 * 1.2,maxLines: 2,),
              IconButton(
                  onPressed: (){
                    !controller.getLike(cat.id!)! ?
                    controller.sentLike(cat.id!, cat.name!) :
                    controller.disLike(cat.id!);
                    controller.listenLikes();
                  },
                  icon: controller.getLike(cat.id!)! ? Icon(Icons.thumb_up, color: AppColors.appBlue) : Icon(Icons.thumb_up, color: AppColors.appGrey)
              ),
              SmallText(text: controller.likes.containsKey(cat.id) ? controller.likes[cat.id].toString() : "0")
            ],
          ),
          SizedBox(height: Dimensions.height10,),
          StarsWidget(stars: mediaStats),
          SizedBox(height: Dimensions.height10,),
          BigText(text: cat.temperament!,size: Dimensions.font16/1.3,maxLines: 1),
          SizedBox(height: Dimensions.height10,),
          BigText(text: cat.origin!,size: Dimensions.font16/1.3,maxLines: 1)
        ],
      );
    });
  }
}
