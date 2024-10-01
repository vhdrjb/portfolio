import 'package:flutter/foundation.dart';
import 'package:portfolio_v2/presentation/presentation.dart';

class HomeRouteStrategy {

  void move(int index,HomeBloc bloc) {
    debugPrint('called index :$index');
    if (index == 0) {
      bloc.add(NavigateToOverviewEvent());
    }else if (index == 1) {
      bloc.add(NavigateToProjectsEvent());
    }else if (index == 2) {
      bloc.add(NavigateToServicesEvent());
    }
  }

  const HomeRouteStrategy();
}