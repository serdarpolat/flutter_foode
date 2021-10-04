import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foode/core/core_shelf.dart';
import 'package:foode/views/base.dart';

class WriteAReview extends StatelessWidget {
  const WriteAReview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Base(
      child: SingleChildScrollView(
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
                "WRITE A REVIEW",
                style: head36(context, textPrimary(context)),
              ),
            ),
            SizedBox(height: hh(context, 50)),
            horizontalpadding(
              context,
              child: horizontalpadding(
                context,
                child: Text(
                  "YOUR MESSAGE",
                  style: label(context, AppColors.primary),
                ),
              ),
            ),
            SizedBox(height: hh(context, 5)),
            horizontalpadding(
              context,
              child: Container(
                padding: EdgeInsets.all(w20(context) / 2),
                decoration: BoxDecoration(
                  color: bgSecondary(context),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: TextField(
                  maxLines: 8,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Your message...",
                    hintStyle: body(context, textSecondary),
                  ),
                ),
              ),
            ),
            SizedBox(height: hh(context, 20)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                5,
                (index) => SvgPicture.asset(
                  "Star".toIcon,
                  color: AppColors.primary,
                  width: w20(context),
                ),
              ),
            ),
            SizedBox(height: hh(context, 50)),
            horizontalpadding(
              context,
              child: SolidBorderedButton(
                onTap: () => popTo(context),
                text: "SEND",
                bgColor: AppColors.primary,
                borderColor: AppColors.primary,
                textColor: AppColors.white,
              ),
            ),
            SizedBox(height: hh(context, 50)),
          ],
        ),
      ),
    );
  }
}
