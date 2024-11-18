import 'package:flutter/material.dart';
import 'package:shop/common/widgets/bottom_nav.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = "/home_screen";
  final PageController pageController = PageController();
   HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      bottomNavigationBar: BottomNav(controller: pageController),
      body: const Center(
        child: Text("Hello from shop"),
      ),
    );
  }
}
