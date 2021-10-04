import 'package:flutter/material.dart';
import 'package:foode/core/core_shelf.dart';
import 'package:foode/views/views_shelf.dart';

import 'auth_header.dart';

class EmailSent extends StatelessWidget {
  const EmailSent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Base(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AuthPageHeader(
            text: "EMAIL SENT",
            onTap: () => popTo(context),
          ),
          horizontalpadding(
            context,
            child: RichText(
              text: TextSpan(
                style: body(context, textSecondary),
                children: [
                  TextSpan(
                    text: "We’ve sent you an email at ",
                  ),
                  TextSpan(
                    text: "user@email.com ",
                    style: body(context, AppColors.primary),
                  ),
                  TextSpan(
                    text:
                        "for verification. Check your email for the verification link.",
                  ),
                ],
              ),
            ),
          ),
          Spacer(),
          horizontalpadding(
            context,
            child: Text(
              "00:38",
              style: head18(context, AppColors.secondary),
            ),
          ),
          SizedBox(height: hh(context, 30)),
          horizontalpadding(
            context,
            child: Text(
              "Did not receive the email yet?",
              style: body(context, textPrimary(context)),
            ),
          ),
          horizontalpadding(
            context,
            child: TextButton(
              onPressed: () {},
              child: Text(
                "Resend",
                style: body(context, AppColors.primary),
              ),
            ),
          ),
          SizedBox(height: hh(context, 30)),
          horizontalpadding(
            context,
            child: SolidBorderedButton(
              onTap: () => pushTo(context, ResetPassword()),
              text: "OPEN EMAIL APP",
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
