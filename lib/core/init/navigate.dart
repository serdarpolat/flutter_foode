import 'package:flutter/material.dart';

Future<dynamic> pushTo(BuildContext context, Widget page) =>
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => page));

Future<dynamic> replaceTo(BuildContext context, Widget page) =>
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (context) => page));

void popTo(BuildContext context) => Navigator.of(context).pop();
