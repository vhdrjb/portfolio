import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio_v2/infrastructure/router/provider/base_route.dart';
import 'package:portfolio_v2/presentation/src/modules/projects/bloc/projects_bloc.dart';
import 'package:portfolio_v2/presentation/src/modules/projects/projects_page.dart';

import '../../../domain/src/project/find/find_all_project_usecase.dart';

class ProjectsRouteProvider extends BaseRoute<ProjectsBloc> {
  final FindAllProjectUsecase findAllProjectUsecase;

  @override
  ProjectsBloc buildBloc() {
    return ProjectsBloc(findAllProjectUsecase: findAllProjectUsecase);
  }

  @override
  Widget provide(BuildContext context, GoRouterState state) {
    return BlocProvider(
      create: (_) => getBloc(state),
      child: const ProjectsPage(),
    );
  }

  ProjectsRouteProvider({
    required this.findAllProjectUsecase,
  });
}
