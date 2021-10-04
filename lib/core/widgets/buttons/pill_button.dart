import 'package:flutter/material.dart';
import 'package:foode/core/core_shelf.dart';

class PillButton extends StatelessWidget {
  final String text;
  final Color bgColor;
  final Color textColor;
  final double? horizontalPadding;
  final double? height;
  final Widget? suffixIcon;
  final Widget? prefixIcon;

  const PillButton(
      {Key? key,
      required this.text,
      required this.bgColor,
      required this.textColor,
      this.horizontalPadding,
      this.height,
      this.suffixIcon,
      this.prefixIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? hh(context, 40),
      padding:
          EdgeInsets.symmetric(horizontal: horizontalPadding ?? w20(context)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          prefixIcon ?? Container(width: ww(context, 24)),
          Text(
            text,
            style: head18(context, textColor),
          ),
          suffixIcon ?? Container(width: ww(context, 24)),
        ],
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(hh(context, 40)),
        color: bgColor,
      ),
    );
  }
}
