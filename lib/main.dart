import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/common/blocs/botton_nav_cubit/bottom_nav_cubit.dart';
import 'package:shop/features/intro/presentation/bloc/intro_cubit/intro_cubit.dart';
import 'package:shop/features/intro/presentation/bloc/splash_cubit/splash_cubit.dart';
import 'package:shop/locator.dart';
import 'package:shop/my_app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initLocator();

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => SplashCubit(),
        ),
        BlocProvider(
          create: (_) => IntroCubit(),
        ),
        BlocProvider(
          create: (_) => BottomNavCubit(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}
