import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foode/core/core_shelf.dart';
import 'package:foode/core/providers/page_provider.dart';
import 'package:provider/provider.dart';

class Navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        width: w(context),
        height: hh(context, 70),
        child: Row(
          children: List.generate(navbarItems.length, (index) {
            var item = navbarItems[index];
            return Consumer(
                builder: (context, PageProvider page, Widget? child) {
              return NavbarItem(
                item: item,
                isActive: item.id == page.p,
                onTap: () {
                  page.changePage(index);
                },
              );
            });
          }),
        ),
        decoration: BoxDecoration(
          color: bgPrimary(context),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              offset: Offset(0, -3),
              blurRadius: 30,
            ),
          ],
        ),
      ),
    );
  }
}

class NavbarItemModel {
  final int id;
  final String icon;

  NavbarItemModel(this.id, this.icon);
}

List<NavbarItemModel> navbarItems = [
  NavbarItemModel(0, "Home"),
  NavbarItemModel(1, "Search"),
  NavbarItemModel(2, "Basket"),
  NavbarItemModel(3, "Heart"),
  NavbarItemModel(4, "User"),
];

class NavbarItem extends StatelessWidget {
  const NavbarItem({
    Key? key,
    required this.item,
    required this.isActive,
    this.onTap,
  }) : super(key: key);
  final NavbarItemModel item;
  final bool isActive;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: w(context) / 5,
      height: hh(context, 70),
      padding: EdgeInsets.all(ww(context, 5)),
      child: Material(
        borderRadius: BorderRadius.circular(hh(context, 10)),
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(hh(context, 10)),
          onTap: onTap,
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  item.icon.toIcon,
                  width: ww(context, 22),
                  color: isActive ? AppColors.primary : textSecondary,
                ),
                SizedBox(height: hh(context, 4)),
                ClipRRect(
                  borderRadius: BorderRadius.circular(hh(context, 2)),
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 240),
                    width: isActive ? ww(context, 12) : 0,
                    height: isActive ? hh(context, 2) : 0,
                    color: isActive ? AppColors.primary : Colors.transparent,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
