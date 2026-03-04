import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:space_app/core/utils/app_colors.dart';

abstract class AppTextStyles {
  static TextStyle headLine = GoogleFonts.inter(
    fontSize: 48,
    fontWeight: FontWeight.w900,
    color: AppColors.white,
  );

  static TextStyle buttonTitleStyle = GoogleFonts.inter(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: AppColors.white,
  );

  static TextStyle bodyMeduim = GoogleFonts.spaceGrotesk(
    fontSize: 24,
    fontWeight: FontWeight.w700,
    color: AppColors.white,
  );

  static TextStyle bodySmall = GoogleFonts.spaceGrotesk(
    fontSize: 16,
    fontWeight: FontWeight.w300,
    color: AppColors.white,
  );
}
