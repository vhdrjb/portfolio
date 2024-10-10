import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio_v2/domain/domain.dart';
import 'package:portfolio_v2/infrastructure/router/provider/base_route.dart';
import 'package:portfolio_v2/presentation/src/modules/career/bloc/career_bloc.dart';
import 'package:portfolio_v2/presentation/src/modules/career/career_page.dart';



class CareerRouteProvider extends BaseRoute<CareerBloc> {
  final FindAllCareerUsecase findAllCareerUsecase;

  @override
  CareerBloc buildBloc() {
    return CareerBloc(findAllCareerUsecase: findAllCareerUsecase);
  }

  @override
  Widget provide(BuildContext context, GoRouterState state) {
    return BlocProvider(
      create: (context) => buildBloc(),
      child: const CareerPage(),
    );
  }

   CareerRouteProvider({
    required this.findAllCareerUsecase,
  });
}
