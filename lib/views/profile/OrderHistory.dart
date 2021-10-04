import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foode/core/core_shelf.dart';
import 'package:foode/views/base.dart';

class OrderHistory extends StatelessWidget {
  const OrderHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Base(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: hh(context, 50)),
          Padding(
            padding: EdgeInsets.only(left: ww(context, 10)),
            child: Material(
              borderRadius: BorderRadius.circular(hh(context, 50)),
              color: Colors.transparent,
              child: InkWell(
                onTap: () => popTo(context),
                borderRadius: BorderRadius.circular(hh(context, 50)),
                child: Container(
                  padding: EdgeInsets.all(ww(context, 10)),
                  child: SvgPicture.asset(
                    "Left".toIcon,
                    width: ww(context, 22),
                    color: textPrimary(context),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: hh(context, 50)),
          horizontalpadding(
            context,
            child: Text(
              "ORDER HISTORY",
              style: head36(context, textPrimary(context)),
            ),
          ),
          SizedBox(height: hh(context, 50)),
          horizontalpadding(
            context,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "08 JULY 2021",
                      style: label(context, AppColors.secondary),
                    ),
                    Text(
                      "\$ 65.00",
                      style: label(context, AppColors.secondary),
                    ),
                  ],
                ),
                SizedBox(height: w20(context)),
                Text(
                  "5 items",
                  style: body(context, textSecondary),
                ),
                SizedBox(height: w20(context)),
                SolidBorderedButton(
                  text: "TRACK ORDER",
                  bgColor: AppColors.primary,
                  borderColor: AppColors.primary,
                  textColor: AppColors.white,
                ),
              ],
            ),
          ),
          SizedBox(height: hh(context, 50)),
          horizontalpadding(
            context,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "05 JULY 2021",
                      style: label(context, AppColors.secondary),
                    ),
                    Text(
                      "\$ 105.00",
                      style: label(context, AppColors.secondary),
                    ),
                  ],
                ),
                SizedBox(height: w20(context)),
                Text(
                  "11 items",
                  style: body(context, textSecondary),
                ),
                SizedBox(height: w20(context)),
                SolidBorderedButton(
                  text: "VIEW DETAILS",
                  bgColor: bgPrimary(context),
                  borderColor: AppColors.primary,
                  textColor: AppColors.primary,
                ),
              ],
            ),
          ),
          SizedBox(height: hh(context, 50)),
          horizontalpadding(
            context,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "01 JULY 2021",
                      style: label(context, AppColors.secondary),
                    ),
                    Text(
                      "\$ 30.00",
                      style: label(context, AppColors.secondary),
                    ),
                  ],
                ),
                SizedBox(height: w20(context)),
                Text(
                  "2 items",
                  style: body(context, textSecondary),
                ),
                SizedBox(height: w20(context)),
                SolidBorderedButton(
                  text: "VIEW DETAILS",
                  bgColor: bgPrimary(context),
                  borderColor: AppColors.primary,
                  textColor: AppColors.primary,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
