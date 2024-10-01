import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio_v2/presentation/presentation.dart';

abstract class BaseNestedRoute<B extends AbstractBloc> {
  Widget provide(BuildContext context, GoRouterState state,Widget child);


  B buildBloc();

  B getBloc(GoRouterState state) {
    B bloc = buildBloc();
    bloc.updateRouting(
        pathParameters: state.pathParameters,
        extra: state.extra,
        queryParameters: state.uri.queryParameters
    );
    return bloc;
  }
}