import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/src/state.dart';
import 'package:portfolio_v2/infrastructure/router/provider/base_route.dart';
import 'package:portfolio_v2/presentation/src/modules/services/services_page.dart';

import '../../../domain/src/service/find/find_all_service_usecase.dart';
import '../../../presentation/src/modules/services/bloc/services_bloc.dart';

class ServiceRouteProvider extends BaseRoute<ServicesBloc> {
  final FindAllServiceUsecase findAllServiceUsecase;

  @override
  ServicesBloc buildBloc() {
    return ServicesBloc(findAllServiceUsecase: findAllServiceUsecase);
  }

  @override
  Widget provide(BuildContext context, GoRouterState state) {
    return BlocProvider(
      create: (_) => getBloc(state),
      child: ServicesPage(),
    );
  }

  ServiceRouteProvider({
    required this.findAllServiceUsecase,
  });
}
