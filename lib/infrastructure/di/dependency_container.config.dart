// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../data/src/base/base_repository.dart' as _i259;
import '../../data/src/datasource/achievement/achievement_api_service.dart'
    as _i1025;
import '../../data/src/datasource/career/career_api_service.dart' as _i307;
import '../../data/src/datasource/project/project_api_service.dart' as _i1035;
import '../../data/src/datasource/service/service_api_service.dart' as _i47;
import '../../data/src/datasource/user/user_api_service.dart' as _i922;
import '../../data/src/repository/achievements/achievement_datasource.dart'
    as _i894;
import '../../data/src/repository/achievements/achievements_repository.dart'
    as _i797;
import '../../data/src/repository/career/career_datasource.dart' as _i715;
import '../../data/src/repository/career/career_repository.dart' as _i552;
import '../../data/src/repository/project/project_datasource.dart' as _i748;
import '../../data/src/repository/project/project_repository.dart' as _i337;
import '../../data/src/repository/service/service_repository.dart' as _i898;
import '../../data/src/repository/service/services_datasource.dart' as _i951;
import '../../data/src/repository/user/user_datasource.dart' as _i205;
import '../../data/src/repository/user/user_repository.dart' as _i228;
import '../../domain/domain.dart' as _i614;
import '../../domain/src/achievements/get_all_achievements_usecase.dart'
    as _i516;
import '../../domain/src/career/find/find_all_career_usecase.dart' as _i560;
import '../../domain/src/career/find/find_last_career_usecase.dart' as _i50;
import '../../domain/src/project/find/find_all_project_usecase.dart' as _i67;
import '../../domain/src/project/find/find_favorite_projects_usecase.dart'
    as _i956;
import '../../domain/src/service/find/find_all_favorite_service_usecase.dart'
    as _i349;
import '../../domain/src/service/find/find_all_service_usecase.dart' as _i1026;
import '../../domain/src/user/find/get_user_information_usecase.dart' as _i188;
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
    gh.factory<_i259.BaseRepository>(() => _i259.BaseRepository());
    gh.factory<_i951.ServiceDatasource>(() => _i47.ServiceApiService());
    gh.factory<_i894.AchievementsDatasource>(
        () => _i1025.AchievementApiService());
    gh.factory<_i748.ProjectDatasource>(() => _i1035.ProjectApiService());
    gh.factory<_i715.CareerDatasource>(() => _i307.CareerApiService());
    gh.factory<_i205.UserDatasource>(() => _i922.UserApiService());
    gh.factory<_i797.AchievementsRepository>(() => _i797.AchievementsRepository(
        datasource: gh<_i894.AchievementsDatasource>()));
    gh.factory<_i898.ServiceRepository>(() =>
        _i898.ServiceRepository(datasource: gh<_i951.ServiceDatasource>()));
    gh.factory<_i228.UserRepository>(
        () => _i228.UserRepository(datasource: gh<_i205.UserDatasource>()));
    gh.factory<_i552.CareerRepository>(
        () => _i552.CareerRepository(datasource: gh<_i715.CareerDatasource>()));
    gh.factory<_i516.GetAllAchievementsUsecase>(() =>
        _i516.GetAllAchievementsUsecase(
            repository: gh<_i797.AchievementsRepository>()));
    gh.factory<_i337.ProjectRepository>(() =>
        _i337.ProjectRepository(datasource: gh<_i748.ProjectDatasource>()));
    gh.factory<_i50.FindLastCareerUsecase>(() =>
        _i50.FindLastCareerUsecase(repository: gh<_i552.CareerRepository>()));
    gh.factory<_i560.FindAllCareerUsecase>(() =>
        _i560.FindAllCareerUsecase(repository: gh<_i552.CareerRepository>()));
    gh.factory<_i956.FindFavoriteProjectsUsecase>(() =>
        _i956.FindFavoriteProjectsUsecase(
            repository: gh<_i337.ProjectRepository>()));
    gh.factory<_i67.FindAllProjectUsecase>(() =>
        _i67.FindAllProjectUsecase(repository: gh<_i337.ProjectRepository>()));
    gh.factory<_i349.FindAllFavoriteServiceUsecase>(() =>
        _i349.FindAllFavoriteServiceUsecase(
            repository: gh<_i898.ServiceRepository>()));
    gh.factory<_i1026.FindAllServiceUsecase>(() => _i1026.FindAllServiceUsecase(
        repository: gh<_i898.ServiceRepository>()));
    gh.factory<_i188.GetUserInformationUsecase>(() =>
        _i188.GetUserInformationUsecase(
            repository: gh<_i228.UserRepository>()));
    gh.factory<_i196.CareerRouteProvider>(() => _i196.CareerRouteProvider(
        findAllCareerUsecase: gh<_i614.FindAllCareerUsecase>()));
    gh.factory<_i986.CareerBloc>(() => _i986.CareerBloc(
        findAllCareerUsecase: gh<_i614.FindAllCareerUsecase>()));
    gh.factory<_i692.HomeRouteProvider>(() => _i692.HomeRouteProvider(
          getUserInformationUsecase: gh<_i188.GetUserInformationUsecase>(),
          getAllAchievementsUsecase: gh<_i516.GetAllAchievementsUsecase>(),
        ));
    gh.factory<_i487.HomeBloc>(() => _i487.HomeBloc(
          getUserInformationUsecase: gh<_i188.GetUserInformationUsecase>(),
          getAllAchievementsUsecase: gh<_i516.GetAllAchievementsUsecase>(),
        ));
    gh.factory<_i33.ServiceRouteProvider>(() => _i33.ServiceRouteProvider(
        findAllServiceUsecase: gh<_i1026.FindAllServiceUsecase>()));
    gh.factory<_i749.ServicesBloc>(() => _i749.ServicesBloc(
        findAllServiceUsecase: gh<_i1026.FindAllServiceUsecase>()));
    gh.factory<_i568.OverviewBloc>(() => _i568.OverviewBloc(
          findFavoriteProjectsUsecase: gh<_i614.FindFavoriteProjectsUsecase>(),
          findLastCareerUsecase: gh<_i50.FindLastCareerUsecase>(),
          favoriteServiceUsecase: gh<_i349.FindAllFavoriteServiceUsecase>(),
        ));
    gh.factory<_i580.OverviewRouteProvider>(() => _i580.OverviewRouteProvider(
          favoriteProjectsUsecase: gh<_i956.FindFavoriteProjectsUsecase>(),
          favoriteServiceUsecase: gh<_i349.FindAllFavoriteServiceUsecase>(),
          findLastCareerUsecase: gh<_i50.FindLastCareerUsecase>(),
        ));
    gh.factory<_i408.ProjectsRouteProvider>(() => _i408.ProjectsRouteProvider(
        findAllProjectUsecase: gh<_i67.FindAllProjectUsecase>()));
    gh.factory<_i389.ProjectsBloc>(() => _i389.ProjectsBloc(
        findAllProjectUsecase: gh<_i67.FindAllProjectUsecase>()));
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
