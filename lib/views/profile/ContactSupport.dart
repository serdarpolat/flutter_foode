import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foode/core/core_shelf.dart';
import 'package:foode/views/base.dart';

class ContactSupport extends StatelessWidget {
  const ContactSupport({Key? key}) : super(key: key);

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
              "CONTACT SUPPORT",
              style: head36(context, textPrimary(context)),
            ),
          ),
          SizedBox(height: hh(context, 50)),
          Container(
            width: w(context),
            padding: EdgeInsets.symmetric(horizontal: w20(context)),
            child: Row(
              children: [
                SvgPicture.asset(
                  "Phone".toIcon,
                  width: ww(context, 22),
                  color: AppColors.primary,
                ),
                SizedBox(width: w20(context)),
                Text(
                  "+00 123 456 7890",
                  style: body(context, textPrimary(context)),
                ),
              ],
            ),
          ),
          SizedBox(height: hh(context, 30)),
          Container(
            width: w(context),
            padding: EdgeInsets.symmetric(horizontal: w20(context)),
            child: Row(
              children: [
                SvgPicture.asset(
                  "Email Sent".toIcon,
                  width: ww(context, 22),
                  color: AppColors.primary,
                ),
                SizedBox(width: w20(context)),
                Text(
                  "support@foode.com",
                  style: body(context, textPrimary(context)),
                ),
              ],
            ),
          ),
          SizedBox(height: hh(context, 30)),
          Container(
            width: w(context),
            padding: EdgeInsets.symmetric(horizontal: w20(context)),
            child: Row(
              children: [
                SvgPicture.asset(
                  "Chat".toIcon,
                  width: ww(context, 22),
                  color: AppColors.primary,
                ),
                SizedBox(width: w20(context)),
                Text(
                  "chat on WhatsApp",
                  style: body(context, textPrimary(context)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
