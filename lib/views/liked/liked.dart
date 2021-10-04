import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foode/core/core_shelf.dart';

class Liked extends StatelessWidget {
  const Liked({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: horizontalpadding(
        context,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: hh(context, 50)),
            Text(
              "LIKED",
              style: head36(context, textPrimary(context)),
            ),
            SizedBox(height: hh(context, 30)),
            LikedItem(
              img: "im2",
              name: "Egg Salad",
              price: "10.00",
            ),
            SizedBox(height: hh(context, 47)),
            LikedItem(
              img: "im1",
              name: "Grilled Salmon",
              price: "45.00",
            ),
          ],
        ),
      ),
    );
  }
}

class LikedItem extends StatelessWidget {
  final String img;
  final String name;
  final String price;

  const LikedItem({
    Key? key,
    required this.img,
    required this.name,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              width: ww(context, 80),
              height: ww(context, 80),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(ww(context, 10)),
                image: DecorationImage(
                  image: AssetImage(img.toImgPng),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(width: w20(context)),
            Container(
              height: hh(context, 80),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    name,
                    style: body(context, textPrimary(context)),
                  ),
                  Text(
                    "\$ $price",
                    style: head24(context, AppColors.primary),
                  ),
                ],
              ),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: ww(context, 22),
              height: ww(context, 22),
              padding: EdgeInsets.all(ww(context, 2)),
              child: SvgPicture.asset(
                "Trash".toIcon,
                color: AppColors.white,
              ),
              decoration: BoxDecoration(
                color: AppColors.error,
                borderRadius: BorderRadius.circular(ww(context, 5)),
              ),
            ),
            SizedBox(height: hh(context, 30)),
            Container(
              width: ww(context, 22),
              height: ww(context, 22),
              padding: EdgeInsets.all(ww(context, 2)),
              child: SvgPicture.asset(
                "Basket".toIcon,
                color: AppColors.white,
              ),
              decoration: BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.circular(ww(context, 5)),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
