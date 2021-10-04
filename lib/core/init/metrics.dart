import 'package:flutter/material.dart';

double w(BuildContext context) => MediaQuery.of(context).size.width;
double h(BuildContext context) => MediaQuery.of(context).size.height;

double ww(BuildContext context, double w) =>
    (MediaQuery.of(context).size.width * w) / 375;
double hh(BuildContext context, double h) =>
    (MediaQuery.of(context).size.height * h) / 812;

double w20(BuildContext context) => ww(context, 20);

Padding horizontalpadding(BuildContext context, {required Widget child}) =>
    Padding(
      padding: EdgeInsets.symmetric(horizontal: w20(context)),
      child: child,
    );
