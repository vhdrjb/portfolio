import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio_v2/infrastructure/router/provider/base_route.dart';
import 'package:portfolio_v2/presentation/presentation.dart';

import 'base_nested_route.dart';

class HomeRouteProvider extends BaseNestedRoute<HomeBloc> {
  @override
  HomeBloc buildBloc() {
    return HomeBloc();
  }

  @override
  Widget provide(BuildContext context, GoRouterState state, Widget child) {
    return BlocProvider(
      create: (context) => getBloc(state),
      child: ResponsivePageComponent(
        desktop: HomePage(
          child: child,
        ),
        mobile: Container(),
        tablet: null,
      ),
    );
  }
}
