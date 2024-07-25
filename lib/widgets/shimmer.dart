import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../utils/dimensions.dart';

class ShimmerWidget extends StatelessWidget {
  const ShimmerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
