import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

part 'splash_state.dart';
part 'connection_status.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(SplashState(connectionStatus: ConnectionInitial()));
}
