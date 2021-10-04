import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foode/core/core_shelf.dart';
import 'package:foode/views/views_shelf.dart';

class AddNewCard extends StatelessWidget {
  const AddNewCard({Key? key}) : super(key: key);

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
              "ADD NEW CARD",
              style: head36(context, textPrimary(context)),
            ),
          ),
          Spacer(),
          horizontalpadding(
            context,
            child: SolidInput(
              label: "CARD NUMBER",
              hintText: "XXXX XXXX XXXX XXXX",
            ),
          ),
          SizedBox(height: hh(context, 30)),
          horizontalpadding(
            context,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SolidInput(
                  label: "EXPIRY DATE",
                  hintText: "MM/YY",
                  width: (w(context) - ww(context, 60)) / 2,
                ),
                SolidInput(
                  label: "CVV",
                  hintText: "XXX",
                  width: (w(context) - ww(context, 60)) / 2,
                ),
              ],
            ),
          ),
          SizedBox(height: hh(context, 50)),
          horizontalpadding(
            context,
            child: SolidBorderedButton(
              onTap: () => popTo(context),
              text: "ADD CARD",
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
