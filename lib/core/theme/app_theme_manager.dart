import 'package:flutter/material.dart';
import 'package:space/core/theme/app_colors.dart';

abstract class AppThemeManager {
  static ThemeData getThemeData() => ThemeData(
    primaryColor: AppColors.white,
    scaffoldBackgroundColor: AppColors.black,
  );
}
