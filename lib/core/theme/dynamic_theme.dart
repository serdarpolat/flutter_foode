import 'package:flutter/material.dart';

import 'colors.dart';

final ThemeData _darkTheme = ThemeData(
  scaffoldBackgroundColor: AppColors.dark,
  fontFamily: "Poppins",
);

ThemeData getDarkTheme() => _darkTheme;

final ThemeData _lightTheme = ThemeData(
  scaffoldBackgroundColor: AppColors.white,
  fontFamily: "Poppins",
);

ThemeData getLightTheme() => _lightTheme;
