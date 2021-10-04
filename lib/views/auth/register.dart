import 'package:flutter/material.dart';
import 'package:foode/core/core_shelf.dart';
import 'package:foode/core/init/navigate.dart';
import 'package:foode/views/views_shelf.dart';

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print((h(context) * 62) / 812);
    return Base(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AuthPageHeader(
              text: "REGISTER",
              onTap: () => replaceTo(context, GetStarted()),
            ),
            SizedBox(height: hh(context, 60.33)),
            horizontalpadding(
              context,
              child: SolidInput(
                label: "FULL NAME",
                hintText: "John Doe",
              ),
            ),
            SizedBox(height: hh(context, 30)),
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
              child: SolidInput(
                label: "PHONE",
                hintText: "+90 555 123 4567",
              ),
            ),
            SizedBox(height: hh(context, 30)),
            horizontalpadding(
              context,
              child: SolidInput(
                label: "PASSWORD",
                hintText: "Password",
                iconName: "Eye Open",
              ),
            ),
            Container(
              alignment: Alignment.centerRight,
              padding: EdgeInsets.only(right: w20(context)),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  "Forgot Password?",
                  style: body(context, textSecondary),
                ),
              ),
            ),
            SizedBox(height: hh(context, 50)),
            horizontalpadding(
              context,
              child: SolidBorderedButton(
                onTap: () => pushTo(context, AddressSetup()),
                text: "REGISTER",
                bgColor: AppColors.primary,
                borderColor: AppColors.primary,
                textColor: AppColors.white,
              ),
            ),
            SizedBox(height: hh(context, 20)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account?",
                  style: body(context, textSecondary),
                ),
                TextButton(
                  onPressed: () => pushTo(context, Login()),
                  child: Text(
                    "Login",
                    style: body(context, AppColors.secondary),
                  ),
                ),
              ],
            ),
            SizedBox(height: hh(context, 50)),
          ],
        ),
      ),
    );
  }
}
