import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/src/state.dart';
import 'package:portfolio_v2/infrastructure/router/provider/base_route.dart';
import 'package:portfolio_v2/presentation/src/base/bloc/abstract_bloc.dart';
import 'package:portfolio_v2/presentation/src/modules/overview/bloc/overview_bloc.dart';
import 'package:portfolio_v2/presentation/src/modules/overview/overview_page.dart';

import '../../../domain/src/career/find/find_last_career_usecase.dart';
import '../../../domain/src/project/find/find_favorite_projects_usecase.dart';
import '../../../domain/src/service/find/find_all_favorite_service_usecase.dart';

class OverviewRouteProvider extends BaseRoute<OverviewBloc> {
  final FindFavoriteProjectsUsecase favoriteProjectsUsecase;
  final FindAllFavoriteServiceUsecase favoriteServiceUsecase;
  final FindLastCareerUsecase findLastCareerUsecase;

  @override
  OverviewBloc buildBloc() {
    return OverviewBloc(
        favoriteServiceUsecase: favoriteServiceUsecase,
        findFavoriteProjectsUsecase: favoriteProjectsUsecase,
        findLastCareerUsecase: findLastCareerUsecase);
  }

  @override
  Widget provide(BuildContext context, GoRouterState state) {
    return BlocProvider(
      create: (_) => getBloc(state),
      child: const OverviewPage(),
    );
  }

  OverviewRouteProvider({
    required this.favoriteProjectsUsecase,
    required this.favoriteServiceUsecase,
    required this.findLastCareerUsecase,
  });
}
