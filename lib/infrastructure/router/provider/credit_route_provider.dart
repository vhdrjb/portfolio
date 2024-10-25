import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio_v2/infrastructure/router/provider/base_route.dart';
import 'package:portfolio_v2/presentation/src/modules/credit/bloc/credit_bloc.dart';
import 'package:portfolio_v2/presentation/src/modules/credit/credit_page.dart';

class CreditRouteProvider extends BaseRoute<CreditBloc> {
  @override
  CreditBloc buildBloc() {
    return CreditBloc();
  }

  @override
  Widget provide(BuildContext context, GoRouterState state) {
    return BlocProvider(
      create: (context) => getBloc(state),
      child: const CreditPage(),
    );
  }
}
