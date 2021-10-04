import 'package:flutter/material.dart';
import 'package:foode/core/providers/page_provider.dart';
import 'package:foode/views/views_shelf.dart';
import 'package:foode/views/widgets/navbar.dart';
import 'package:provider/provider.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, PageProvider page, Widget? child) {
      return Base(
        child: Stack(
          children: [
            pages[page.p],
            Navbar(),
          ],
        ),
      );
    });
  }
}

List<Widget> pages = [
  Home(),
  Search(),
  Basket(),
  Liked(),
  Profile(),
];
