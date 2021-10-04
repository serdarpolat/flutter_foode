import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foode/core/core_shelf.dart';
import 'package:foode/views/views_shelf.dart';

class RecpmmendedItem extends StatelessWidget {
  const RecpmmendedItem({
    Key? key,
    required this.img,
    required this.name,
    required this.price,
  }) : super(key: key);
  final String img;
  final String name;
  final String price;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => pushTo(context, ProductDetail()),
      child: Container(
        width: ww(context, 157),
        height: hh(context, 230),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: ww(context, 157),
              height: ww(context, 157),
              padding: EdgeInsets.only(
                  bottom: hh(context, 10), right: hh(context, 10)),
              alignment: Alignment.bottomRight,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(hh(context, 5)),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                  child: Container(
                    width: ww(context, 22),
                    height: ww(context, 22),
                    padding: EdgeInsets.all(hh(context, 2)),
                    child: SvgPicture.asset(
                      "Heart".toIcon,
                      color: Colors.white,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(hh(context, 5)),
                      color: Colors.white.withOpacity(0.2),
                    ),
                  ),
                ),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(ww(context, 10)),
                image: DecorationImage(
                    image: AssetImage(img.toImgPng), fit: BoxFit.cover),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(hh(context, 10)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    name,
                    style: body(context, textPrimary(context)),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "\$ $price",
                        style: head18(context, AppColors.primary),
                      ),
                      Container(
                        width: ww(context, 22),
                        height: ww(context, 22),
                        padding: EdgeInsets.all(hh(context, 2)),
                        child: SvgPicture.asset(
                          "Basket".toIcon,
                          color: Colors.white,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(hh(context, 5)),
                          color: AppColors.primary,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(ww(context, 10)),
          color: bgPrimary(context),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.15),
              offset: Offset(0, 0),
              blurRadius: 30,
            ),
          ],
        ),
      ),
    );
  }
}
