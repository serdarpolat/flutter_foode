import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foode/core/core_shelf.dart';
import 'package:foode/views/base.dart';

class ReferToAFriend extends StatelessWidget {
  const ReferToAFriend({Key? key}) : super(key: key);

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
              "REFER TO A FRIEND",
              style: head36(context, textPrimary(context)),
            ),
          ),
          SizedBox(height: hh(context, 50)),
          horizontalpadding(
            context,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                horizontalpadding(
                  context,
                  child: Text(
                    "REFER CODE",
                    style: label(context, AppColors.primary),
                  ),
                ),
                SizedBox(height: hh(context, 5)),
                Container(
                  height: hh(context, 40),
                  padding: EdgeInsets.only(
                      left: w20(context), right: w20(context) / 2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Q8F4-B6S2-S6B3-N6Z5",
                        style: body(context, textSecondary),
                      ),
                      SvgPicture.asset(
                        "Copy".toIcon,
                        width: ww(context, 22),
                        color: AppColors.primary,
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(hh(context, 40)),
                    color: bgSecondary(context),
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          horizontalpadding(
            context,
            child: SolidBorderedButton(
              onTap: () => popTo(context),
              text: "SHARE THIS APP",
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
