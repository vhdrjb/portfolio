import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio_v2/domain/src/project/find/find_project_by_id_usecase.dart';
import 'package:portfolio_v2/infrastructure/router/provider/base_route.dart';
import 'package:portfolio_v2/presentation/src/modules/project_detail/bloc/project_detail_bloc.dart';
import 'package:portfolio_v2/presentation/src/modules/project_detail/project_detail_page.dart';


class ProjectDetailRouteProvider extends BaseRoute<ProjectDetailBloc> {
  final FindProjectByIdUsecase findProjectByIdUsecase;

  @override
  ProjectDetailBloc buildBloc() {
    return ProjectDetailBloc(findProjectByIdUsecase: findProjectByIdUsecase);
  }

  @override
  Widget provide(BuildContext context, GoRouterState state) {
    return BlocProvider(
        create: (_) => getBloc(state), child: const ProjectDetailPage());
  }

  ProjectDetailRouteProvider({
    required this.findProjectByIdUsecase,
  });
}
