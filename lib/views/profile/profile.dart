import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foode/core/core_shelf.dart';
import 'package:foode/core/providers/setting_page_provider.dart';
import 'package:foode/views/views_shelf.dart';
import 'package:provider/provider.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Base(
      child: Column(
        children: [
          SizedBox(height: hh(context, 80)),
          Container(
            width: ww(context, 80),
            height: ww(context, 80),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: AppColors.primary, width: 5),
              image: DecorationImage(
                image: AssetImage("user".toImgPng),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Text(
            "John Doe",
            style: body(context, textPrimary(context)),
          ),
          Spacer(),
          ...List.generate(settingsItems.length, (index) {
            var item = settingsItems[index];
            return SettingsItem(
              item: item,
              onTap: () {
                final setProv =
                    Provider.of<SettingPageProvider>(context, listen: false);

                if (index != settingsItems.length - 1) {
                  setProv.changePage(item.id);
                  pushTo(context, SettingsBase());
                }
              },
            );
          }),
          SizedBox(height: hh(context, 70)),
        ],
      ),
    );
  }
}

class SettingsItemModel {
  final int id;
  final String icon;
  final String name;

  SettingsItemModel(this.id, this.icon, this.name);
}

List<SettingsItemModel> settingsItems = [
  SettingsItemModel(0, "Pencil", "Account and Profile"),
  SettingsItemModel(1, "Wallet", "Manage Payment Methods"),
  SettingsItemModel(2, "Location", "Manage Addresses"),
  SettingsItemModel(3, "History", "Order History"),
  SettingsItemModel(4, "Bug", "Contact Support"),
  SettingsItemModel(5, "Gift", "Refer to a Friend"),
  SettingsItemModel(6, "Star", "Write a Review"),
  SettingsItemModel(7, "Paper1", "Terms and Conditions"),
  SettingsItemModel(8, "Paper2", "Privacy Policy"),
  SettingsItemModel(9, "Logout", "Logout"),
];

class SettingsItem extends StatelessWidget {
  const SettingsItem({
    Key? key,
    required this.item,
    this.onTap,
  }) : super(key: key);
  final SettingsItemModel item;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      elevation: 0,
      child: InkWell(
        onTap: onTap,
        child: Container(
          width: w(context),
          height: hh(context, 52),
          padding: EdgeInsets.symmetric(horizontal: w20(context)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SvgPicture.asset(
                    item.icon.toIcon,
                    width: ww(context, 22),
                    color: item.name == "Logout"
                        ? AppColors.error
                        : AppColors.primary,
                  ),
                  SizedBox(width: ww(context, 20)),
                  Text(
                    item.name,
                    style: body(
                        context,
                        item.name == "Logout"
                            ? AppColors.error
                            : textPrimary(context)),
                  ),
                ],
              ),
              SvgPicture.asset(
                "Right".toIcon,
                width: ww(context, 22),
                color: item.name == "Logout"
                    ? AppColors.error
                    : textPrimary(context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
