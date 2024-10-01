import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import 'package:portfolio_v2/infrastructure/router/provider/career_route_provider.dart';
import 'package:portfolio_v2/infrastructure/router/provider/home_route_provider.dart';
import 'package:portfolio_v2/infrastructure/router/provider/overview_route_provider.dart';
import 'package:portfolio_v2/infrastructure/router/provider/projects_route_provider.dart';
import 'package:portfolio_v2/infrastructure/router/provider/services_route_provider.dart';
import 'package:portfolio_v2/presentation/presentation.dart';

import '../../presentation/src/theme/dimensions.dart';

@LazySingleton()
class AppRouteFactory {
  final HomeRouteProvider _homeRouteProvider;
  final OverviewRouteProvider _overviewRouteProvider;
  final ProjectsRouteProvider _projectsRouteProvider;
  final ServiceRouteProvider _serviceRouteProvider;
  final CareerRouteProvider _careerRouteProvider;

  CustomTransitionPage create(BuildContext context, GoRouterState state) {
    final String path = state.path ?? '/';
    if (path == Routes.projects) {
      return _providePage(
          _projectsRouteProvider.provide(context, state), state);
    }
    if (path == Routes.overview) {
      return _providePage(
          _overviewRouteProvider.provide(context, state), state);
    }
    if (path == Routes.services) {
      return _providePage(_serviceRouteProvider.provide(context, state), state);
    }
    if (path == Routes.careers) {
      return _providePage(_careerRouteProvider.provide(context, state), state);
    }
    throw 'page not found';
  }

  CustomTransitionPage _providePage(Widget page, GoRouterState state) {
    return CustomTransitionPage(
      child: SizedBox(
        width: Dimensions.homeContentWebMaxWidth,
          child: page),
      transitionDuration: const Duration(milliseconds: 100),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return FadeTransition(
          opacity: CurveTween(curve: Curves.easeIn).animate(animation),
          child: child,
        );
      },
    );
  }

  Widget createNested(BuildContext context, GoRouterState state, Widget child) {
    return _homeRouteProvider.provide(context, state, child);
  }

  const AppRouteFactory({
    required HomeRouteProvider homeRouteProvider,
    required OverviewRouteProvider overviewRouteProvider,
    required ProjectsRouteProvider projectsRouteProvider,
    required ServiceRouteProvider serviceRouteProvider,
    required CareerRouteProvider careerRouteProvider,
  })  : _homeRouteProvider = homeRouteProvider,
        _overviewRouteProvider = overviewRouteProvider,
        _projectsRouteProvider = projectsRouteProvider,
        _serviceRouteProvider = serviceRouteProvider,
        _careerRouteProvider = careerRouteProvider;
}
