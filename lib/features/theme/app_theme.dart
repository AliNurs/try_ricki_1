import 'package:flutter/material.dart';
part 'app_colors.dart';

abstract class AppTheme {
  // static BorderRadius br=
  static ThemeData darkTheme = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: AppColors.dark0B1E2D,
  );

  static ThemeData lightTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: AppColors.lightFCFCFC,
  );
}
