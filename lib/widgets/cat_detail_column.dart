import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:technicaltestpragma/widgets/small_text.dart';
import 'package:technicaltestpragma/widgets/starts_widget.dart';

import '../utils/app_colors.dart';
import '../utils/dimensions.dart';
import 'big_text.dart';

class CatDetailColumn extends StatelessWidget {

  final String name;
  final String temperament;
  final String origin;
  final int mediaStats;
  String catId;


  CatDetailColumn({
    super.key,
    required this.name,
    required this.mediaStats,
    required this.temperament,
    required this.origin,
    this.catId = ""
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(text: name,size: Dimensions.font16 * 1.3,maxLines: 2,),
        SizedBox(height: Dimensions.height10,),
        StarsWidget(stars: mediaStats),
        SizedBox(height: Dimensions.height10,),
        BigText(text: temperament,size: Dimensions.font16/1.3,maxLines: 1),
        SizedBox(height: Dimensions.height10,),
        BigText(text: origin,size: Dimensions.font16/1.3,maxLines: 1)
      ],
    );
  }
}
