import 'package:flutter/cupertino.dart';
import 'package:foode/core/theme/theme_shelf.dart';

Widget logo(BuildContext context, {TextStyle? foodStyle, TextStyle? eStyle}) =>
    RichText(
      text: TextSpan(
        style: foodStyle ?? head36(context, textPrimary(context)),
        children: [
          TextSpan(
            text: "FOOD-",
          ),
          TextSpan(
            text: "E",
            style: eStyle ?? head36(context, AppColors.primary),
          ),
        ],
      ),
    );
