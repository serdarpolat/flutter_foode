import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foode/core/core_shelf.dart';
import 'package:foode/views/views_shelf.dart';

class OrderConfirmed extends StatelessWidget {
  const OrderConfirmed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Base(
      child: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.light,
          systemNavigationBarColor: Colors.transparent,
          systemNavigationBarIconBrightness: Brightness.light,
        ),
        child: Container(
          width: w(context),
          height: h(context),
          color: AppColors.success,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "ORDER CONFIRMED",
                style: head36(context, AppColors.white),
              ),
              SizedBox(height: hh(context, 50)),
              Container(
                width: ww(context, 157),
                height: ww(context, 157),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      offset: Offset(0, hh(context, 4)),
                      blurRadius: 10,
                    ),
                  ],
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage("ast2".toImgPng), fit: BoxFit.cover),
                ),
              ),
              SizedBox(height: hh(context, 50)),
              horizontalpadding(
                context,
                child: Text(
                  "Hang on Tight! We’ve received your order and we’ll bring it to you ASAP!",
                  textAlign: TextAlign.center,
                  style: body(context, AppColors.white),
                ),
              ),
              SizedBox(height: hh(context, 95)),
              horizontalpadding(
                context,
                child: SolidBorderedButton(
                  onTap: () => popTo(context),
                  text: "TRACK MY ORDER",
                  bgColor: AppColors.white,
                  borderColor: AppColors.white,
                  textColor: AppColors.primary,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
