import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foode/core/core_shelf.dart';
import 'package:foode/views/views_shelf.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
        systemNavigationBarColor: Colors.transparent,
        systemNavigationBarIconBrightness: Brightness.light,
      ),
      child: Base(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Jumbotron(),
            SizedBox(height: hh(context, 20)),
            ProductHeader(),
            SizedBox(height: hh(context, 30)),
            ProductDescription(),
            SizedBox(height: hh(context, 40)),
            QuantityPrice(),
            Spacer(),
            horizontalpadding(
              context,
              child: SolidBorderedButton(
                text: "ADD TO BASKET",
                bgColor: AppColors.primary,
                borderColor: AppColors.primary,
                textColor: AppColors.white,
              ),
            ),
            SizedBox(height: hh(context, 40)),
          ],
        ),
      ),
    );
  }
}

class QuantityPrice extends StatelessWidget {
  const QuantityPrice({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return horizontalpadding(
      context,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              horizontalpadding(
                context,
                child: Text(
                  "QUANTITY",
                  style: label(context, AppColors.primary),
                ),
              ),
              SizedBox(height: hh(context, 5)),
              Container(
                width: ww(context, 140),
                height: hh(context, 40),
                child: horizontalpadding(
                  context,
                  child: Row(
                    children: [
                      Text(
                        "1",
                        style: head18(context, textPrimary(context)),
                      ),
                      Spacer(),
                      Row(
                        children: [
                          SvgPicture.asset(
                            "Subtract".toIcon,
                            width: ww(context, 22),
                            color: AppColors.primary,
                          ),
                          SizedBox(width: w20(context)),
                          SvgPicture.asset(
                            "Add".toIcon,
                            width: ww(context, 22),
                            color: AppColors.primary,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                  color: bgSecondary(context),
                  borderRadius: BorderRadius.circular(hh(context, 40)),
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "SUB TOTAL",
                style: label(context, textPrimary(context)),
              ),
              SizedBox(height: hh(context, 10)),
              Text(
                "\$ 15.00",
                style: head24(context, AppColors.primary),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ProductDescription extends StatelessWidget {
  const ProductDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return horizontalpadding(
      context,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "DESCRIPTION",
            style: head18(context, textPrimary(context)),
          ),
          SizedBox(height: hh(context, 10)),
          Text(
            "Non odit iusto delectus maxime sit placeat voluptatum dolorem. Dolores quos rerum iusto. Beatae totam ab veritatis aliquid tenetur qui ut. Quia ut dolorum enim et. Exercitationem occaecati eum est ex qui harum aliquam.",
            style: body(context, textSecondary),
          ),
        ],
      ),
    );
  }
}

class ProductHeader extends StatelessWidget {
  const ProductHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return horizontalpadding(
      context,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "SALMON",
                style: head36(context, textPrimary(context)),
              ),
              Text(
                "The Nautilus",
                style: body(context, AppColors.secondary),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SvgPicture.asset(
                "Clock".toIcon,
                width: ww(context, 22),
                color: AppColors.secondary,
              ),
              SizedBox(height: hh(context, 5)),
              Text(
                "34 mins",
                style: body(context, AppColors.secondary),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Jumbotron extends StatefulWidget {
  const Jumbotron({
    Key? key,
  }) : super(key: key);

  @override
  State<Jumbotron> createState() => _JumbotronState();
}

class _JumbotronState extends State<Jumbotron> {
  PageController controller = PageController();
  int p = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: hh(context, 300),
      child: Stack(
        children: [
          PageView(
            controller: controller,
            onPageChanged: (val) {
              setState(() {
                p = val;
              });
            },
            children: [
              Container(
                width: w(context),
                height: hh(context, 300),
                child: Image.asset(
                  "im2".toImgPng,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                width: w(context),
                height: hh(context, 300),
                child: Image.asset(
                  "im2".toImgPng,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                width: w(context),
                height: hh(context, 300),
                child: Image.asset(
                  "im2".toImgPng,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
          Positioned(
            top: hh(context, 50),
            left: w20(context),
            right: w20(context),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(hh(context, 5)),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                    child: GestureDetector(
                      onTap: () => popTo(context),
                      child: Container(
                        width: ww(context, 32),
                        height: ww(context, 32),
                        padding: EdgeInsets.all(hh(context, 2)),
                        child: SvgPicture.asset(
                          "Left".toIcon,
                          color: Colors.white,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(hh(context, 5)),
                          color: Colors.white.withOpacity(0.2),
                        ),
                      ),
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(hh(context, 5)),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                    child: Container(
                      width: ww(context, 32),
                      height: ww(context, 32),
                      padding: EdgeInsets.all(hh(context, 2)),
                      child: SvgPicture.asset(
                        "Options".toIcon,
                        color: Colors.white,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(hh(context, 5)),
                        color: Colors.white.withOpacity(0.2),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Positioned(
            bottom: hh(context, 10),
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AnimatedContainer(
                  duration: Duration(milliseconds: 240),
                  width: p == 0 ? ww(context, 20) : ww(context, 10),
                  height: hh(context, 2),
                  decoration: BoxDecoration(
                    color: p == 0 ? AppColors.primary : Colors.white,
                    borderRadius: BorderRadius.circular(hh(context, 2)),
                  ),
                ),
                SizedBox(width: ww(context, 5)),
                AnimatedContainer(
                  duration: Duration(milliseconds: 240),
                  width: p == 1 ? ww(context, 20) : ww(context, 10),
                  height: hh(context, 2),
                  decoration: BoxDecoration(
                    color: p == 1 ? AppColors.primary : Colors.white,
                    borderRadius: BorderRadius.circular(hh(context, 2)),
                  ),
                ),
                SizedBox(width: ww(context, 5)),
                AnimatedContainer(
                  duration: Duration(milliseconds: 240),
                  width: p == 2 ? ww(context, 20) : ww(context, 10),
                  height: hh(context, 2),
                  decoration: BoxDecoration(
                    color: p == 2 ? AppColors.primary : Colors.white,
                    borderRadius: BorderRadius.circular(hh(context, 2)),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
