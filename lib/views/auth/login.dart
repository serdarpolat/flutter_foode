import 'package:flutter/material.dart';
import 'package:foode/core/core_shelf.dart';
import 'package:foode/core/init/navigate.dart';
import 'package:foode/core/widgets/widget_shelf.dart';
import 'package:foode/views/auth/forgot_password.dart';
import 'package:foode/views/base.dart';
import 'package:foode/views/views_shelf.dart';

import 'auth_header.dart';
import 'register.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print((h(context) * 62) / 812);
    return Base(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AuthPageHeader(
              text: "LOGIN",
              onTap: () => replaceTo(context, GetStarted()),
            ),
            SizedBox(height: hh(context, 238.3)),
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
                label: "PASSWORD",
                hintText: "Password",
                iconName: "Eye Open",
              ),
            ),
            Container(
              alignment: Alignment.centerRight,
              padding: EdgeInsets.only(right: w20(context)),
              child: TextButton(
                onPressed: () => pushTo(context, ForgotPassword()),
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
                // onTap: () => pushTo(context, Login()),
                text: "LOGIN",
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
                  "Don't have an account?",
                  style: body(context, textSecondary),
                ),
                TextButton(
                  onPressed: () => pushTo(context, Register()),
                  child: Text(
                    "Register",
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
