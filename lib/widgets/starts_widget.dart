import 'package:flutter/material.dart';
import 'package:technicaltestpragma/widgets/small_text.dart';

import '../utils/app_colors.dart';

class StarsWidget extends StatelessWidget {

  final int stars;

  StarsWidget({
    super.key,
    required this.stars
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Wrap(
            children: List.generate(stars, (index) =>
                Icon(Icons.star,color: AppColors.appBlue, size: 15,)
            )
        ),
      ],
    );
  }
}
