import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import '../utils/dimensions.dart';

class WaitingContainer extends StatelessWidget {
  const WaitingContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: Dimensions.screenHeight * 0.75,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          CircularProgressIndicator(backgroundColor: Colors.white,color: AppColors.appBlue,),
          SizedBox(height: Dimensions.height20,),
          Text("Loading cats list, Please wait...")
        ],
      ),
    );
  }
}
