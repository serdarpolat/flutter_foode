import 'package:flutter/material.dart';
import 'package:foode/core/core_shelf.dart';

class Campaign extends StatelessWidget {
  const Campaign({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: hh(context, 190),
      child: Stack(
        children: [
          Container(
            width: w(context),
            height: hh(context, 190),
            padding: EdgeInsets.all(w20(context)),
            child: Container(
              padding: EdgeInsets.fromLTRB(
                w20(context),
                w20(context),
                w20(context),
                hh(context, 10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      style: head24(context, AppColors.white),
                      children: [
                        TextSpan(
                          text: "GET ",
                        ),
                        TextSpan(
                          text: "50%",
                          style: head36(context, AppColors.dark),
                        ),
                        TextSpan(
                          text: " AS A JOINING BONUS",
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Text(
                    "USE CODE ON CHECKOUT",
                    style: label(context, AppColors.white),
                  ),
                  Text(
                    "NEW50",
                    style: head36(context, AppColors.dark),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.circular(ww(context, 10)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.15),
                    offset: Offset(0, hh(context, 4)),
                    blurRadius: 20,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            right: -ww(context, 27),
            bottom: 0,
            child: Image.asset(
              "thumb".toImgPng,
              width: ww(context, 289),
              height: hh(context, 162),
            ),
          ),
        ],
      ),
    );
  }
}
