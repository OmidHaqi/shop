import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:shop/common/widgets/main_wrapper.dart';
import 'package:shop/config/my_theme.dart';
import 'package:shop/features/home/presentation/home_screen.dart';
import 'package:shop/features/intro/presentation/intro_main_wrapper.dart';
import 'package:shop/features/intro/presentation/splash_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: MyThemes.lightTheme,
      darkTheme: MyThemes.darkTheme,
      initialRoute: "/",
      locale: const Locale("fa", ""),
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale("en", ""),
        Locale("fa", ""),
      ],
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        IntroMainWrapper.routeName: (context) => IntroMainWrapper(),
        MainWrapper.routeName: (context) => MainWrapper(),
      },
      title: 'Shop',
      home: const SplashScreen(),
    );
  }
}
