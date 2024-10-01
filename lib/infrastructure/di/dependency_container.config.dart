// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../presentation/src/modules/career/bloc/career_bloc.dart' as _i986;
import '../../presentation/src/modules/home/bloc/home_bloc.dart' as _i487;
import '../../presentation/src/modules/overview/bloc/overview_bloc.dart'
    as _i568;
import '../../presentation/src/modules/projects/bloc/projects_bloc.dart'
    as _i389;
import '../../presentation/src/modules/services/bloc/services_bloc.dart'
    as _i749;
import '../router/app_route_factory.dart' as _i994;
import '../router/app_router.dart' as _i81;
import '../router/provider/career_route_provider.dart' as _i196;
import '../router/provider/home_route_provider.dart' as _i692;
import '../router/provider/overview_route_provider.dart' as _i580;
import '../router/provider/projects_route_provider.dart' as _i408;
import '../router/provider/services_route_provider.dart' as _i33;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i196.CareerRouteProvider>(() => _i196.CareerRouteProvider());
    gh.factory<_i692.HomeRouteProvider>(() => _i692.HomeRouteProvider());
    gh.factory<_i408.ProjectsRouteProvider>(
        () => _i408.ProjectsRouteProvider());
    gh.factory<_i580.OverviewRouteProvider>(
        () => _i580.OverviewRouteProvider());
    gh.factory<_i33.ServiceRouteProvider>(() => _i33.ServiceRouteProvider());
    gh.factory<_i487.HomeBloc>(() => _i487.HomeBloc());
    gh.factory<_i986.CareerBloc>(() => _i986.CareerBloc());
    gh.factory<_i389.ProjectsBloc>(() => _i389.ProjectsBloc());
    gh.factory<_i568.OverviewBloc>(() => _i568.OverviewBloc());
    gh.factory<_i749.ServicesBloc>(() => _i749.ServicesBloc());
    gh.lazySingleton<_i994.AppRouteFactory>(() => _i994.AppRouteFactory(
          homeRouteProvider: gh<_i692.HomeRouteProvider>(),
          overviewRouteProvider: gh<_i580.OverviewRouteProvider>(),
          projectsRouteProvider: gh<_i408.ProjectsRouteProvider>(),
          serviceRouteProvider: gh<_i33.ServiceRouteProvider>(),
          careerRouteProvider: gh<_i196.CareerRouteProvider>(),
        ));
    gh.lazySingleton<_i81.AppRouter>(
        () => _i81.AppRouter(routeFactory: gh<_i994.AppRouteFactory>()));
    return this;
  }
}
