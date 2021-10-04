import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foode/core/core_shelf.dart';
import 'package:foode/views/views_shelf.dart';

class ConfirmCheckout extends StatelessWidget {
  const ConfirmCheckout({Key? key}) : super(key: key);

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
              "CHECKOUT",
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
                  "PRICE",
                  style: label(context, textPrimary(context)),
                ),
                Text(
                  "\$ 65.00",
                  style: head36(context, AppColors.primary),
                ),
              ],
            ),
          ),
          SizedBox(height: hh(context, 50)),
          horizontalpadding(
            context,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "DELIVER TO",
                      style: label(context, textPrimary(context)),
                    ),
                    Text(
                      "Home",
                      style: body(context, textPrimary(context)),
                    ),
                  ],
                ),
                TextButton(
                  onPressed: () => pushTo(context, ChangeAddress()),
                  child: Text(
                    "Change",
                    style: body(context, AppColors.secondary),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: hh(context, 50)),
          horizontalpadding(
            context,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "PAYMENT METHOD",
                      style: label(context, textPrimary(context)),
                    ),
                    Text(
                      "XXXX XXXX XXXX 2358",
                      style: body(context, textPrimary(context)),
                    ),
                  ],
                ),
                TextButton(
                  onPressed: () => pushTo(context, ChangePayment()),
                  child: Text(
                    "Change",
                    style: body(context, AppColors.secondary),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: hh(context, 50)),
          horizontalpadding(
            context,
            child: SolidBorderedButton(
              onTap: () => pushTo(context, OrderError()),
              text: "CONFIRM ORDER",
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
