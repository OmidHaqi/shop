import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:shop/features/intro/repositories/splash_repository.dart';

part 'splash_state.dart';
part 'connection_status.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashRepository splashRepository = SplashRepository();
  SplashCubit()
      : super(
          SplashState(
            connectionStatus: ConnectionInitial(),
          ),
        );

  checkConnectionEvent() async {
    emit(
      state.copyWith(
        newConnectionStatus: ConnectionInitial(),
      ),
    );

    bool isConnect = await splashRepository.checkConnectivity();

    if (isConnect) {
      emit(
        state.copyWith(
          newConnectionStatus: ConnectionOn(),
        ),
      );
    } else {
      emit(
        state.copyWith(
          newConnectionStatus: ConnectionOff(),
        ),
      );
    }
  }
}
