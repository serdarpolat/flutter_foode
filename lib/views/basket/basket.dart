import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foode/core/core_shelf.dart';

import 'confirm_checkout.dart';

class Basket extends StatelessWidget {
  const Basket({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return horizontalpadding(
      context,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: hh(context, 50)),
          Text(
            "BASKET",
            style: head36(context, textPrimary(context)),
          ),
          SizedBox(height: hh(context, 30)),
          BasketItem(
            img: "im2",
            name: "Egg Salad",
            price: "10.00",
            piece: "2",
          ),
          SizedBox(height: hh(context, 47)),
          BasketItem(
            img: "im1",
            name: "Grilled Salmon",
            price: "45.00",
            piece: "3",
          ),
          Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "TOTAL",
                style: head18(context, textPrimary(context)),
              ),
              Text(
                "\$ 65.00",
                style: head36(context, AppColors.secondary),
              ),
            ],
          ),
          SizedBox(height: hh(context, 30)),
          SolidBorderedButton(
            onTap: () => pushTo(context, ConfirmCheckout()),
            text: "PROCEED TO CHECKOUT",
            bgColor: AppColors.primary,
            borderColor: AppColors.primary,
            textColor: AppColors.white,
          ),
          SizedBox(height: hh(context, 100)),
        ],
      ),
    );
  }
}

class BasketItem extends StatelessWidget {
  final String img;
  final String name;
  final String price;
  final String piece;

  const BasketItem(
      {Key? key,
      required this.img,
      required this.name,
      required this.price,
      required this.piece})
      : super(key: key);

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
            Row(
              children: [
                Text(
                  piece,
                  style: body(context, textPrimary(context)),
                ),
                SizedBox(width: ww(context, 5)),
                SvgPicture.asset(
                  "Dropdown".toIcon,
                  color: textPrimary(context),
                  width: ww(context, 22),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
