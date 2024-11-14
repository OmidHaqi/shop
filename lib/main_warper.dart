import 'package:flutter/material.dart';
import 'package:shop/features/home/presentation/home_screen.dart';
import 'package:shop/features/intro/presentation/splash_screen.dart';

class MainWarper extends StatelessWidget {
  const MainWarper({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {HomeScreen.routeName: (context) => const HomeScreen()},
      title: 'Shop',
      home: const SplashScreen(),
    );
  }
}
