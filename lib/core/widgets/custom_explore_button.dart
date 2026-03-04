import 'package:flutter/material.dart';
import 'package:space_app/core/utils/app_colors.dart';
import 'package:space_app/core/utils/app_text_styles.dart';

class CustomExploreButton extends StatelessWidget {
  final String text;
  final Function onPressed;

  const CustomExploreButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SafeArea(
        child: FilledButton(
          onPressed: () {
            onPressed();
          },
          style: FilledButton.styleFrom(
            backgroundColor: AppColors.red,
            foregroundColor: AppColors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(1000),
            ),
            minimumSize: Size.fromHeight(56),
          ),
          child: Row(
            mainAxisAlignment: .spaceBetween,
            children: [
              Text(text, style: AppTextStyles.buttonTitleStyle),
              const Icon(Icons.arrow_forward, size: 24),
            ],
          ),
        ),
      ),
    );
  }
}
