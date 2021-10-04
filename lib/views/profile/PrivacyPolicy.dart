import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foode/core/core_shelf.dart';
import 'package:foode/views/base.dart';

import 'TermsAndConditions.dart';

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({Key? key}) : super(key: key);

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
                "PRIVACY POLICY",
                style: head36(context, textPrimary(context)),
              ),
            ),
            SizedBox(height: hh(context, 50)),
            ...List.generate(5, (index) => RuleItem()),
          ],
        ),
      ),
    );
  }
}
