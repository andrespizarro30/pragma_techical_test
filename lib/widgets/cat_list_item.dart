
import 'package:flutter/material.dart';
import 'package:technicaltestpragma/widgets/cat_detail_column.dart';
import 'package:technicaltestpragma/widgets/image_error_handler.dart';

import '../models/CatsBreedModel.dart';
import '../utils/app_colors.dart';
import '../utils/dimensions.dart';

class CatItemScreen extends StatelessWidget {

  final CatBreedModel cat;

  const CatItemScreen({Key? key,required this.cat}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: Dimensions.height10,horizontal: Dimensions.width20),
      child: Card(
        color: AppColors.iconColor1,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Stack(
          children: [
            Center(
              child: Container(
                  height: Dimensions.pageViewContainer,
                  width: Dimensions.screenWidth,
                  margin: EdgeInsets.only(left: Dimensions.width10,right: Dimensions.width10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.radius30),
                  ),
                  child: ImageWithErrorHandler(
                    imageUrl: 'https://cdn2.thecatapi.com/images/${cat.referenceImageId}.jpg',
                  )
              ),
            ),
            Positioned(
                bottom: -Dimensions.height20,
                right: Dimensions.width10 / 5,
                left: Dimensions.width10 / 5,
                child: Container(
                    height: Dimensions.pageViewTextContainer * 1.2,
                    margin: EdgeInsets.only(left: Dimensions.width30,right: Dimensions.width30,bottom: Dimensions.height40),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(Dimensions.radius30),
                        color: Colors.white,
                        boxShadow:[
                          BoxShadow(
                              color: AppColors.appBlue,
                              blurRadius: 5.0,
                              offset: Offset(0,5)
                          ),
                          BoxShadow(
                              color: Colors.white,
                              offset: Offset(-5,0)
                          ),
                          BoxShadow(
                              color: Colors.white,
                              offset: Offset(5,0)
                          )
                        ]
                    ),
                    child: Container(
                        padding: EdgeInsets.only(top: 0,left: Dimensions.width15,right: Dimensions.width15),
                        child: CatDetailColumn(cat: cat,mediaStats: calculateStatsMedia(cat))
                    )
                )
            )
          ],
        ),
      ),
    );
  }

  int calculateStatsMedia(CatBreedModel cat){

    int sum = cat.adaptability! +
        cat.affectionLevel! +
        cat.childFriendly! +
        cat.dogFriendly! +
        cat.energyLevel! +
        cat.grooming! +
        cat.healthIssues! +
        cat.intelligence! +
        cat.sheddingLevel! +
        cat.socialNeeds! +
        cat.strangerFriendly! +
        cat.vocalisation!;

    int media = (sum/12).round();

    return media;
  }

}
