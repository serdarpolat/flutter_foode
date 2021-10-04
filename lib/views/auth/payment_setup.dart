import 'package:flutter/material.dart';
import 'package:foode/core/core_shelf.dart';
import 'package:foode/views/views_shelf.dart';

class PaymentSetup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Base(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AuthPageHeader(
              text: "PAYMENT SETUP",
              onTap: () => popTo(context),
            ),
            SizedBox(height: hh(context, 50)),
            horizontalpadding(
              context,
              child: SolidInput(
                label: "CARD NUMBER",
                hintText: "XXXX-XXXX-XXXX-XXXX",
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
                // onTap: () => pushTo(context, Login()),
                text: "ADD CARD",
                bgColor: AppColors.primary,
                borderColor: AppColors.primary,
                textColor: AppColors.white,
              ),
            ),
            SizedBox(height: hh(context, 20)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () => pushTo(context, MainPage()),
                  child: Text(
                    "Skip for now",
                    style: body(context, textSecondary),
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
