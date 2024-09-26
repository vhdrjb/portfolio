import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio_v2/infrastructure/router/provider/base_route.dart';
import 'package:portfolio_v2/presentation/presentation.dart';

class HomeRouteProvider extends BaseRoute<HomeBloc> {
  @override
  HomeBloc buildBloc() {
    return HomeBloc();
  }

  @override
  Widget provide(BuildContext context, GoRouterState state) {
    return BlocProvider(
      create: (context) => getBloc(state),
      child: ResponsivePageComponent(desktop: HomePage(), mobile: Container(), tablet: null),
    );
  }
}
