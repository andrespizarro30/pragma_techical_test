import 'package:flutter/cupertino.dart';
import '../utils/dimensions.dart';

class BigText extends StatelessWidget {

  final Color? color;
  final String text;
  double size;
  TextOverflow overflow;
  int maxLines;

  BigText({super.key,
    required this.text,
    this.color = const Color(0xFF332d2b),
    this.size = 0,
    this.overflow = TextOverflow.ellipsis,
    this.maxLines = 1
  });

  @override
  Widget build(BuildContext context) {
    return Semantics(
      label: text,
      child: Text(
        text,
        maxLines: maxLines,
        overflow: overflow,
        style: TextStyle(
            color: color,
            fontWeight: FontWeight.w400,
            fontFamily: 'Roboto',
            fontSize: size ==0?Dimensions.font20:size
        ),
      ),
    );
  }
}
