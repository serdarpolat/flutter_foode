import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foode/core/core_shelf.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: horizontalpadding(
        context,
        child: Column(
          children: [
            SizedBox(height: hh(context, 70)),
            SolidInput(
              label: "SEARCH",
              hintText: "Cuisine/Dish",
            ),
            SizedBox(height: hh(context, 25)),
            Categories(),
            SizedBox(height: hh(context, 45)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "RECENTS",
                  style: label(context, textPrimary(context)),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "VIEW ALL",
                    style: label(context, AppColors.primary),
                  ),
                ),
              ],
            ),
            SizedBox(height: hh(context, 15)),
            Column(
              children: List.generate(recents.length, (index) {
                return Container(
                  height: ww(context, 22),
                  margin: EdgeInsets.only(bottom: w20(context)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset(
                            "History".toIcon,
                            width: ww(context, 22),
                            color: textSecondary,
                          ),
                          SizedBox(width: w20(context)),
                          Text(
                            recents[index],
                            style: body(context, textSecondary),
                          ),
                        ],
                      ),
                      SvgPicture.asset(
                        "Close".toIcon,
                        width: ww(context, 22),
                        color: textSecondary,
                      ),
                    ],
                  ),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}

List<String> recents = [
  "Biryani",
  "Dosa",
  "Veg Pakoda",
  "Chicken Tikka",
  "Tandoori",
  "Falooda",
];

class Categories extends StatelessWidget {
  const Categories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "CATEGORIES",
              style: label(context, textPrimary(context)),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "VIEW ALL",
                style: label(context, AppColors.primary),
              ),
            ),
          ],
        ),
        SizedBox(height: hh(context, 15)),
        Container(
          width: w(context) - (2 * w20(context)),
          child: Wrap(
            spacing: w20(context),
            runSpacing: w20(context),
            children: List.generate(
              buttons.length,
              (index) {
                return MaterialButton(
                  onPressed: () {},
                  padding: EdgeInsets.symmetric(horizontal: w20(context)),
                  height: hh(context, 40),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      hh(context, 40),
                    ),
                  ),
                  color: bgSecondary(context),
                  child: Text(
                    buttons[index],
                    style: body(context, textPrimary(context)),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}

List<String> buttons = [
  "Breakfast",
  "Fastfood",
  "Lunch",
  "South Indian",
  "North Indian",
  "Dinner",
  "Pure Veg",
  "Non Veg",
];
