import 'package:flutter/material.dart';
import 'package:foode/core/core_shelf.dart';
import 'package:foode/views/views_shelf.dart';

class AddressSetup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Base(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AuthPageHeader(
              text: "ADDRESS SETUP",
              onTap: () => popTo(context),
            ),
            SizedBox(height: hh(context, 50)),
            horizontalpadding(
              context,
              child: SolidInput(
                label: "ADDRESS LINE 1",
                hintText: "Address",
              ),
            ),
            SizedBox(height: hh(context, 30)),
            horizontalpadding(
              context,
              child: SolidInput(
                label: "ADDRESS LINE 2",
                hintText: "Address",
              ),
            ),
            SizedBox(height: hh(context, 30)),
            horizontalpadding(
              context,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SolidInput(
                    label: "ZIP CODE",
                    hintText: "000-000",
                    width: (w(context) - ww(context, 60)) / 2,
                  ),
                  SolidInput(
                    label: "CITY",
                    hintText: "City",
                    width: (w(context) - ww(context, 60)) / 2,
                  ),
                ],
              ),
            ),
            SizedBox(height: hh(context, 30)),
            horizontalpadding(
              context,
              child: SolidInput(
                label: "COUNTRY",
                hintText: "Country",
              ),
            ),
            SizedBox(height: hh(context, 50)),
            horizontalpadding(
              context,
              child: SolidBorderedButton(
                // onTap: () => pushTo(context, Login()),
                text: "ADD ADDRESS",
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
                  onPressed: () => pushTo(context, PaymentSetup()),
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
