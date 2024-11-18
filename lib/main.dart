import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/features/intro/presentation/bloc/splash_cubit/splash_cubit.dart';
import 'package:shop/locator.dart';
import 'package:shop/main_warper.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initLocator();

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => SplashCubit(),
        ),
      ],
      child: const MainWarper(),
    ),
  );
}
