// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../presentation/src/modules/home/bloc/home_bloc.dart' as _i487;
import '../router/app_route_factory.dart' as _i994;
import '../router/app_router.dart' as _i81;
import '../router/provider/home_route_provider.dart' as _i692;

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
    gh.factory<_i692.HomeRouteProvider>(() => _i692.HomeRouteProvider());
    gh.factory<_i487.HomeBloc>(() => _i487.HomeBloc());
    gh.lazySingleton<_i994.AppRouteFactory>(() => _i994.AppRouteFactory(
        homeRouteProvider: gh<_i692.HomeRouteProvider>()));
    gh.lazySingleton<_i81.AppRouter>(
        () => _i81.AppRouter(routeFactory: gh<_i994.AppRouteFactory>()));
    return this;
  }
}
