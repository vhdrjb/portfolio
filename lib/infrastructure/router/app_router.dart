import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import 'package:portfolio_v2/infrastructure/router/app_route_factory.dart';
import 'package:portfolio_v2/presentation/presentation.dart';

@LazySingleton()
class AppRouter {
  final AppRouteFactory _routeFactory;
  GoRouter? _goRouter;

  final GlobalKey<NavigatorState> _rootNavigatorKey =
      GlobalKey<NavigatorState>(debugLabel: 'root');
  final GlobalKey<NavigatorState> _shellNavigatorKey =
      GlobalKey<NavigatorState>(debugLabel: 'shell');

  AppRouter({required AppRouteFactory routeFactory}) : _routeFactory = routeFactory {
    generateRouter();
  }

  GoRouter get router => _goRouter!;

  GoRouter generateRouter() {
    final GoRouter goRouter;
    if (_goRouter == null) {
      _goRouter = GoRouter(
        navigatorKey: _rootNavigatorKey,
        overridePlatformDefaultLocation: true,
        debugLogDiagnostics: true,
        initialLocation: Routes.overview,
        routes: [
          ShellRoute(
            navigatorKey: _shellNavigatorKey,
            builder: _routeFactory.createNested,
            routes: [
              GoRoute(path: Routes.overview,pageBuilder:_routeFactory.create,name: Routes.overview),
              GoRoute(path: Routes.projects,pageBuilder: _routeFactory.create,name: Routes.projects),
              GoRoute(path: Routes.services,pageBuilder: _routeFactory.create,name: Routes.services),
              GoRoute(path: Routes.careers,pageBuilder: _routeFactory.create,name: Routes.careers)
            ],
          ),
          GoRoute(path: Routes.projectDetail,pageBuilder: _routeFactory.create,name: Routes.projectDetail)
        ],
      );
      goRouter = _goRouter!;
    } else {
      goRouter = _goRouter!;
    }
    return goRouter;
  }
}
