import 'package:flutter/material.dart';
import 'package:foode/core/core_shelf.dart';
import 'package:foode/core/widgets/widget_shelf.dart';
import 'package:foode/views/auth/auth_header.dart';
import 'package:foode/views/views_shelf.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Base(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AuthPageHeader(
              text: "FORGOT PASSWORD",
              onTap: () => popTo(context),
            ),
            horizontalpadding(
              context,
              child: Text(
                "We’ll send a password reset link to your email.",
                style: titleMedium14(context, textSecondary),
              ),
            ),
            SizedBox(height: hh(context, 60)),
            horizontalpadding(
              context,
              child: SolidInput(
                label: "EMAIL",
                hintText: "johndoe@email.com",
              ),
            ),
            SizedBox(height: hh(context, 30)),
            horizontalpadding(
              context,
              child: SolidBorderedButton(
                onTap: () => pushTo(context, EmailSent()),
                text: "SEND",
                bgColor: AppColors.primary,
                borderColor: AppColors.primary,
                textColor: AppColors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
