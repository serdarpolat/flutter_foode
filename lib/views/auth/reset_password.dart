import 'package:flutter/material.dart';
import 'package:foode/core/core_shelf.dart';
import 'package:foode/views/views_shelf.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Base(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AuthPageHeader(
              text: "RESET PASSWORD",
              onTap: () => popTo(context),
            ),
            SizedBox(height: hh(context, 50)),
            horizontalpadding(
              context,
              child: SolidInput(
                label: "NEW PASSWORD",
                hintText: "Password",
                obsecureText: true,
                iconName: "Eye Open",
              ),
            ),
            SizedBox(height: hh(context, 30)),
            horizontalpadding(
              context,
              child: SolidInput(
                label: "CONFIRM PASSWORD",
                hintText: "Confirm Password",
                obsecureText: true,
                iconName: "Eye Open",
              ),
            ),
            SizedBox(height: hh(context, 30)),
            horizontalpadding(
              context,
              child: SolidBorderedButton(
                onTap: () {},
                text: "RESET PASSWORD",
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
