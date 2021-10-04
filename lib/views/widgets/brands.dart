import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foode/core/core_shelf.dart';

List<String> brands = ["McDonald", "DominosPizza", "BurgerKing", "PizzaHut"];

class Brands extends StatelessWidget {
  const Brands({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: w(context),
      height: hh(context, 120),
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(
          left: ww(context, 20),
          top: hh(context, 20),
          bottom: hh(context, 20),
        ),
        itemCount: brands.length,
        itemBuilder: (context, index) {
          return Container(
            width: ww(context, 80),
            height: ww(context, 80),
            margin: EdgeInsets.only(right: ww(context, 20)),
            child: Center(
              child: SvgPicture.asset(
                brands[index].toIcon,
                width: ww(context, 44),
              ),
            ),
            decoration: BoxDecoration(
              color: bgPrimary(context),
              borderRadius: BorderRadius.circular(ww(context, 20)),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  offset: Offset(0, hh(context, 2)),
                  blurRadius: 30,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
