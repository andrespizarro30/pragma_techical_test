import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:technicaltestpragma/utils/app_colors.dart';

import '../widgets/big_text.dart';

void showCustomSnackBar(String message,{bool isError=true,String title="Error", Color backgroundColor = Colors.white}){

  Get.snackbar(
      title,
      message,
      titleText: BigText(text: title,color: Colors.black,),
      messageText: Text(
          message,
          style: const TextStyle(
              color: Colors.black
          )
      ),
      colorText: Colors.black,
      snackPosition: SnackPosition.TOP,
      backgroundColor: backgroundColor
  );

}