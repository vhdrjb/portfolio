import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/src/state.dart';
import 'package:portfolio_v2/infrastructure/router/provider/base_route.dart';
import 'package:portfolio_v2/presentation/src/base/bloc/abstract_bloc.dart';
import 'package:portfolio_v2/presentation/src/modules/overview/bloc/overview_bloc.dart';
import 'package:portfolio_v2/presentation/src/modules/overview/overview_page.dart';

class OverviewRouteProvider extends BaseRoute<OverviewBloc> {
  @override
  OverviewBloc buildBloc() {
    return OverviewBloc();
  }

  @override
  Widget provide(BuildContext context, GoRouterState state) {
    return BlocProvider(create: (_) => getBloc(state),child: OverviewPage(),);
  }

}