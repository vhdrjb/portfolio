import 'package:flutter/src/widgets/framework.dart';
import 'package:go_router/src/state.dart';
import 'package:injectable/injectable.dart';
import 'package:portfolio_v2/infrastructure/router/provider/home_route_provider.dart';
import 'package:portfolio_v2/presentation/presentation.dart';

@LazySingleton()
class AppRouteFactory {
  final HomeRouteProvider _homeRouteProvider;

  Widget create(BuildContext context, GoRouterState state) {
    final String path = state.path ?? '/';
    if (path == Routes.home) {
      return _homeRouteProvider.provide(context, state);
    }
    throw 'page not found';
  }

  const AppRouteFactory({
    required HomeRouteProvider homeRouteProvider,
  }) : _homeRouteProvider = homeRouteProvider;
}