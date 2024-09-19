import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import 'package:portfolio_v2/infrastructure/router/app_route_factory.dart';
import 'package:portfolio_v2/presentation/presentation.dart';

@LazySingleton()
class AppRouter {
  final AppRouteFactory _routeFactory;
  GoRouter? _goRouter;

  AppRouter({
    required AppRouteFactory routeFactory,
  }) : _routeFactory = routeFactory;

  GoRouter generateRouter() {
    final GoRouter goRouter;
    if (_goRouter == null) {
      _goRouter = GoRouter(
        overridePlatformDefaultLocation: true,
        debugLogDiagnostics: true,
        initialLocation: Routes.home,
        routes: [
          GoRoute(path: Routes.home,builder: _routeFactory.create)
        ],
      );
      goRouter = _goRouter!;
    } else {
      goRouter = _goRouter!;
    }
    return goRouter;
  }
}
