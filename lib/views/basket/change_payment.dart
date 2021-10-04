import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foode/core/core_shelf.dart';
import 'package:foode/views/views_shelf.dart';

class ChangePayment extends StatelessWidget {
  const ChangePayment({Key? key}) : super(key: key);

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
              "MY PAYMENT METHODS",
              style: head36(context, textPrimary(context)),
            ),
          ),
          Spacer(),
          horizontalpadding(
            context,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "CASH",
                  style: label(context, textPrimary(context)),
                ),
                SizedBox(height: hh(context, 10)),
                Text(
                  "Pay using cash",
                  style: body(context, textSecondary),
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
                Text(
                  "MASTERCARD-0164",
                  style: label(context, textPrimary(context)),
                ),
                SizedBox(height: hh(context, 10)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "XXXX XXXX XXXX 0164",
                      style: body(context, textSecondary),
                    ),
                    Text(
                      "09/21",
                      style: body(context, textSecondary),
                    ),
                  ],
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
                Text(
                  "VISA-3648",
                  style: label(context, AppColors.secondary),
                ),
                SizedBox(height: hh(context, 10)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "XXXX XXXX XXXX 3648",
                      style: body(context, textPrimary(context)),
                    ),
                    Text(
                      "11/23",
                      style: body(context, textPrimary(context)),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: hh(context, 50)),
          horizontalpadding(
            context,
            child: SolidBorderedButton(
              onTap: () => pushTo(context, AddNewCard()),
              text: "ADD NEW PAYMENT METHOD",
              bgColor: AppColors.primary,
              borderColor: AppColors.primary,
              textColor: AppColors.white,
            ),
          ),
          SizedBox(height: hh(context, 50)),
        ],
      ),
    );
  }
}
