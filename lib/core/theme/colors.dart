import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../core_shelf.dart';

class AppColors {
  static const Color white = Colors.white;
  static const Color light = Color(0xfff4f4f4);
  static const Color grey = Color(0xffa3a3a3);
  static const Color darkGrey = Color(0xff414141);
  static const Color dark = Color(0xff2d2d2d);
  static const Color success = Color(0xff2FDB5F);
  static const Color warning = Color(0xffF1C75D);
  static const Color error = Color(0xffF77272);
  static const Color primaryLight = Color(0xff67E5CE);
  static const Color primary = Color(0xff2FDBBC);
  static const Color primaryDark = Color(0xff1EAE94);
  static const Color secondaryLight = Color(0xffFAAC52);
  static const Color secondary = Color(0xffF99928);
  static const Color secondaryDark = Color(0xffDF7B07);
}

ThemeProvider themeProvider(BuildContext context) =>
    Provider.of<ThemeProvider>(context, listen: false);

Color bgPrimary(BuildContext context) =>
    themeProvider(context).isDark ? AppColors.dark : AppColors.white;

Color bgSecondary(BuildContext context) =>
    themeProvider(context).isDark ? AppColors.darkGrey : AppColors.light;

Color textPrimary(BuildContext context) =>
    themeProvider(context).isDark ? AppColors.white : AppColors.dark;

Color textSecondary = AppColors.grey;
