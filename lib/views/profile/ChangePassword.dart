import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foode/core/core_shelf.dart';
import 'package:foode/views/views_shelf.dart';

class ChangePassword extends StatelessWidget {
  const ChangePassword({Key? key}) : super(key: key);

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
              "CHANGE PASSWORD",
              style: head36(context, textPrimary(context)),
            ),
          ),
          Spacer(),
          horizontalpadding(
            context,
            child: SolidInput(
              label: "OLD PASSWORD",
              hintText: "Old Password",
              obsecureText: true,
            ),
          ),
          SizedBox(height: hh(context, 30)),
          horizontalpadding(
            context,
            child: SolidInput(
              label: "NEW PASSWORD",
              hintText: "New Password",
              obsecureText: true,
            ),
          ),
          SizedBox(height: hh(context, 30)),
          horizontalpadding(
            context,
            child: SolidInput(
              label: "CONFIRM PASSWORD",
              hintText: "Confirm Password",
              obsecureText: true,
            ),
          ),
          SizedBox(height: hh(context, 50)),
          horizontalpadding(
            context,
            child: SolidBorderedButton(
              onTap: () => popTo(context),
              text: "CHANGE PASSWORD",
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
