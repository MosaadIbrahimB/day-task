import 'package:day_task_app/utils/app_color.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData darkTheme = ThemeData(
      scaffoldBackgroundColor: AppColor.colorBackGround,
      textTheme: const TextTheme(
        headlineLarge: TextStyle(
          color: Colors.white,
          fontSize: 50,
          fontWeight: FontWeight.bold,
          letterSpacing: 2,
        ),
        headlineMedium: TextStyle(color: AppColor.colorWhite, fontSize: 22),
        labelLarge: TextStyle(color: AppColor.colorTextLabel, fontSize: 16),
      ),
     );
}
