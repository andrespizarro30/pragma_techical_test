import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import '../utils/dimensions.dart';

class ImageWithErrorHandler extends StatelessWidget {

  final String imageUrl;

  ImageWithErrorHandler({required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(Dimensions.radius30),
      child: Image.network(
        width: Dimensions.screenWidth * 0.8,
        height: Dimensions.screenHeight * 0.5,
        imageUrl,
        errorBuilder: (context, error, stackTrace) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.error,
                color: Colors.red,
                size: 50.0,
              ),
              SizedBox(height: 8.0),
              Text(
                'Error loading image!!!',
                style: TextStyle(color: Colors.red),
              ),
            ],
          );
        },
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) return child;
          return Center(
            child: CircularProgressIndicator(
              value: loadingProgress.expectedTotalBytes != null
                  ? loadingProgress.cumulativeBytesLoaded /
                  loadingProgress.expectedTotalBytes!
                  : null,
            ),
          );
        },
        fit: BoxFit.cover,
      ),
    );
  }
}