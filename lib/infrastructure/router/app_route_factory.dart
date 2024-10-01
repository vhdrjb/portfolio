import 'package:flutter/src/widgets/framework.dart';
import 'package:go_router/src/state.dart';
import 'package:injectable/injectable.dart';
import 'package:portfolio_v2/infrastructure/router/provider/home_route_provider.dart';
import 'package:portfolio_v2/infrastructure/router/provider/overview_route_provider.dart';
import 'package:portfolio_v2/infrastructure/router/provider/projects_route_provider.dart';
import 'package:portfolio_v2/infrastructure/router/provider/services_route_provider.dart';
import 'package:portfolio_v2/presentation/presentation.dart';

@LazySingleton()
class AppRouteFactory {
  final HomeRouteProvider _homeRouteProvider;
  final OverviewRouteProvider _overviewRouteProvider;
  final ProjectsRouteProvider _projectsRouteProvider;
  final ServiceRouteProvider _serviceRouteProvider;

  Widget create(BuildContext context, GoRouterState state) {
    final String path = state.path ?? '/';
    if (path == Routes.projects) {
      return _projectsRouteProvider.provide(context, state);
    }
    if (path == Routes.overview) {
      return _overviewRouteProvider.provide(context, state);
    }
    if (path == Routes.services) {
      return _serviceRouteProvider.provide(context, state);
    }
    throw 'page not found';
  }

  Widget createNested(BuildContext context, GoRouterState state, Widget child) {
    return _homeRouteProvider.provide(context, state, child);
  }

  const AppRouteFactory({
    required HomeRouteProvider homeRouteProvider,
    required OverviewRouteProvider overviewRouteProvider,
    required ProjectsRouteProvider projectsRouteProvider,
    required ServiceRouteProvider serviceRouteProvider,
  })  : _homeRouteProvider = homeRouteProvider,
        _overviewRouteProvider = overviewRouteProvider,
        _projectsRouteProvider = projectsRouteProvider,
        _serviceRouteProvider = serviceRouteProvider;
}
