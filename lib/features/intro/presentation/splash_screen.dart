import 'package:delayed_widget/delayed_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:shop/common/utils/custom_snackbar.dart';
import 'package:shop/features/intro/presentation/bloc/splash_cubit/splash_cubit.dart';
import 'package:shop/features/intro/presentation/intro_main_wrapper.dart';

class SplashScreen extends StatefulWidget {
  
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    BlocProvider.of<SplashCubit>(context).checkConnectionEvent();
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        width: width,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: DelayedWidget(
                delayDuration: const Duration(milliseconds: 200),
                animationDuration: const Duration(milliseconds: 1000),
                animation: DelayedAnimations.SLIDE_FROM_BOTTOM,
                child: const Placeholder(),
              ),
            ),
            BlocConsumer<SplashCubit, SplashState>(builder: (ctx, state) {
              /// if user is online

              if (state.connectionStatus is ConnectionInitial) {
                return Directionality(
                  textDirection: TextDirection.ltr,
                  child: LoadingAnimationWidget.progressiveDots(
                    color: Colors.red,
                    size: 50,
                  ),
                );
              } else if (state.connectionStatus is ConnectionOn) {
                return const Text(
                  'ارتباط برقرار است!',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                );
              } else if (state.connectionStatus is ConnectionOff) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'به اینترنت متصل نیستید!',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    IconButton(
                        splashColor: Colors.red,
                        onPressed: () {
                          /// check that we are online or not
                          BlocProvider.of<SplashCubit>(context)
                              .checkConnectionEvent();
                        },
                        icon: const Icon(
                          Icons.autorenew,
                          color: Colors.black,
                        ))
                  ],
                );
              } else {
                return const SizedBox.shrink();
              }
            }, listener: (ctx, state) {
              if (state.connectionStatus is ConnectionOn) {
                gotoHome();
              }
            }),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }

  Future<void> gotoHome()  {
    return Future.delayed(const Duration(seconds: 3), () {
      if (!mounted) return;
      CustomSnackBar.showSnackbar(context, "وارد شدید", Colors.green);
      Navigator.pushReplacementNamed(context,IntroMainWrapper.routeName);
    });
  }
}
