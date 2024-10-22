import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio_v2/presentation/presentation.dart';
import 'package:portfolio_v2/presentation/src/extensions/context_extensions.dart';
import 'package:portfolio_v2/presentation/src/modules/home/home_mobile.dart';

import '../../../domain/src/achievements/get_all_achievements_usecase.dart';
import '../../../domain/src/user/find/get_user_information_usecase.dart';
import 'base_nested_route.dart';

class HomeRouteProvider extends BaseNestedRoute<HomeBloc> {
  final GetUserInformationUsecase getUserInformationUsecase;
  final GetAllAchievementsUsecase getAllAchievementsUsecase;

  @override
  HomeBloc buildBloc() {
    return HomeBloc(
        getAllAchievementsUsecase: getAllAchievementsUsecase,
        getUserInformationUsecase: getUserInformationUsecase);
  }

  @override
  Widget provide(BuildContext context, GoRouterState state, Widget child) {
    return BlocProvider(
      create: (context) => getBloc(state),
      child: ResponsivePageComponent(
        desktop: (size) => HomePage(
          width: size.width,
          path: state.fullPath,
          child: child,
        ),
        mobile: (size) => HomeMobile(
          width: size.width,
          path: state.fullPath,
          child: child,
        ),
        tablet: null,
      ),
    );
  }

  HomeRouteProvider({
    required this.getUserInformationUsecase,
    required this.getAllAchievementsUsecase,
  });
}
