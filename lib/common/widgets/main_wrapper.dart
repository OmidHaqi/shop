import 'package:flutter/material.dart';
import 'package:shop/common/widgets/bottom_nav.dart';
import 'package:shop/features/home/presentation/screens/home_screen.dart';

class MainWrapper extends StatelessWidget {
  static const routeName = "/main_wrapper";

  MainWrapper({super.key});

  final PageController pageController = PageController();

  final List<Widget> topLevelScreens = [
    const HomeScreen(),
    Container(
      color: Colors.black,
    ),
    Container(
      color: Colors.amber,
    ),
    Container(
      color: Colors.green,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNav(controller: pageController),
      body: Column(
        children: [
          /// search box

          const SizedBox(
            height: 60,
          ),
          Expanded(
            child: PageView(
              controller: pageController,
              children: topLevelScreens,
            ),
          ),
        ],
      ),
    );
  }
}
