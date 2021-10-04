import 'package:flutter/material.dart';
import 'package:foode/core/providers/setting_page_provider.dart';
import 'package:foode/views/views_shelf.dart';
import 'package:provider/provider.dart';

class SettingsBase extends StatelessWidget {
  const SettingsBase({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer(
        builder: (context, SettingPageProvider page, Widget? child) {
      return Base(
        child: settingsWidgets[page.page],
      );
    });
  }
}

List<Widget> settingsWidgets = [
  AccountAndProfile(),
  ChangePayment(),
  ChangeAddress(),
  OrderHistory(),
  ContactSupport(),
  ReferToAFriend(),
  WriteAReview(),
  TermsAndConditions(),
  PrivacyPolicy(),
];
