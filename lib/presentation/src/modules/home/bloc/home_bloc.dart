import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:portfolio_v2/presentation/presentation.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends AbstractBloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<HomeEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
