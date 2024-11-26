import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shop/common/blocs/botton_nav_cubit/bottom_nav_cubit.dart';

class BottomNav extends StatelessWidget {
  final PageController controller;

  const BottomNav({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      color: Colors.white,
      child: BlocBuilder<BottomNavCubit, int>(
        builder: (context, int state) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {
                  /// change selected index
                  BlocProvider.of<BottomNavCubit>(context)
                      .changeSelectedIndex(0);
                  controller.animateToPage(0,
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut);
                },
                icon: Icon(
                  state == 0 ? Icons.home : Icons.home_outlined,
                ),
              ),
              IconButton(
                onPressed: () {
                  BlocProvider.of<BottomNavCubit>(context)
                      .changeSelectedIndex(1);
                  controller.animateToPage(1,
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut);
                },
                icon: Icon(
                  state == 1 ? Icons.category : Icons.category_outlined,
                ),
              ),
              IconButton(
                onPressed: () async {
                  BlocProvider.of<BottomNavCubit>(context)
                      .changeSelectedIndex(2);
                  controller.animateToPage(2,
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut);
                },
                icon: Icon(
                  state == 2 ? Icons.person : Icons.person_outline,
                ),
              ),
              IconButton(
                onPressed: () async {
                  BlocProvider.of<BottomNavCubit>(context)
                      .changeSelectedIndex(3);
                  controller.animateToPage(3,
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut);
                },
                icon: Icon(
                  state == 3 ? Icons.shopping_bag : Icons.shopping_bag_outlined,
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Future<bool> getDataFromPrefs() async {
    // Obtain shared preferences.
    final prefs = await SharedPreferences.getInstance();
    final bool loggedIn = prefs.getBool('user_loggedIn') ?? false;

    return loggedIn;
  }
}
