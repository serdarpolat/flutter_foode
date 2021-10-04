import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foode/core/core_shelf.dart';
import 'package:foode/views/views_shelf.dart';

class ChangeAddress extends StatelessWidget {
  const ChangeAddress({Key? key}) : super(key: key);

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
              "MY ADDRESSES",
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
                  "PARTY PLACE",
                  style: label(context, AppColors.secondary),
                ),
                SizedBox(height: hh(context, 10)),
                Text(
                  "Apt. 12, Watson Bldg., 13th Ave. and St. James St., 406035",
                  style: body(context, textPrimary(context)),
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
                  "OFFICE",
                  style: label(context, textPrimary(context)),
                ),
                SizedBox(height: hh(context, 10)),
                Text(
                  "Suite 03, Johnson Business Park, 554537",
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
                  "HOME",
                  style: label(context, textPrimary(context)),
                ),
                SizedBox(height: hh(context, 10)),
                Text(
                  "Apt. 12, Watson Bldg., 13th Ave. and St. James St., 406035",
                  style: body(context, textSecondary),
                ),
              ],
            ),
          ),
          SizedBox(height: hh(context, 50)),
          horizontalpadding(
            context,
            child: SolidBorderedButton(
              onTap: () => pushTo(context, AddNewAddress()),
              text: "ADD NEW ADDRESS",
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
