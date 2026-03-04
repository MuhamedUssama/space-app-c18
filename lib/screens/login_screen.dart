import 'package:flutter/material.dart';
import 'package:space_app/core/utils/app_assets.dart';
import 'package:space_app/core/utils/app_colors.dart';
import 'package:space_app/core/utils/app_text_styles.dart';
import 'package:space_app/core/widgets/custom_explore_button.dart';
import 'package:space_app/screens/home_screen.dart';

class LoginScreen extends StatelessWidget {
  static const String routeName = '/login-screen';
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: Stack(
        children: [
          Image.asset(AppImages.onBoarding),
          Align(
            alignment: AlignmentGeometry.centerLeft,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                'Explore\nThe\nUniverse',
                style: AppTextStyles.headLine,
              ),
            ),
          ),
          Align(
            alignment: .bottomCenter,
            child: CustomExploreButton(
              text: 'Explore',
              onPressed: () {
                Navigator.pushReplacementNamed(context, HomeScreen.routeName);
              },
            ),
          ),
        ],
      ),
    );
  }
}
