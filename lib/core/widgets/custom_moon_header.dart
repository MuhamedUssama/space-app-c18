import 'package:flutter/material.dart';
import 'package:space_app/core/utils/app_assets.dart';
import 'package:space_app/core/utils/app_colors.dart';
import 'package:space_app/core/utils/app_text_styles.dart';

class CustomMoonHeader extends StatelessWidget {
  final String title;
  final String subTitle;
  final bool isDetailsScreen;

  const CustomMoonHeader({
    super.key,
    required this.title,
    required this.subTitle,
    this.isDetailsScreen = false,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(AppImages.halfMoon),
        Positioned.fill(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: const [Colors.transparent, AppColors.black],
                stops: const [0, .81],
                begin: AlignmentGeometry.topCenter,
                end: AlignmentGeometry.bottomCenter,
              ),
            ),
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  mainAxisAlignment: .spaceBetween,
                  crossAxisAlignment: .stretch,
                  children: [
                    Text(
                      title,
                      style: AppTextStyles.bodyMeduim,
                      textAlign: .center,
                    ),
                    Text(
                      subTitle,
                      style: AppTextStyles.bodyMeduim,
                      textAlign: .left,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Visibility(
          visible: isDetailsScreen,
          child: SafeArea(
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: IconButton.styleFrom(
                backgroundColor: AppColors.red,
                foregroundColor: AppColors.white,
                shape: const CircleBorder(),
                iconSize: 28,
              ),
              icon: const Icon(Icons.arrow_back),
            ),
          ),
        ),
      ],
    );
  }
}
