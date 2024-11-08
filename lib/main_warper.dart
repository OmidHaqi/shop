import 'package:flutter/material.dart';
import 'package:shop/features/intro/presentation/splash_screen.dart';

class MainWarper extends StatelessWidget {
  const MainWarper({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shop',
      home: SplashScreen(),
    );
  }
}
