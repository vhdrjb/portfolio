import 'dart:async';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:meta/meta.dart';
import 'package:portfolio_v2/domain/domain.dart';
import 'package:portfolio_v2/domain/src/base/usecase/usecase_result.dart';
import 'package:portfolio_v2/presentation/presentation.dart';

import '../../../../../domain/src/project/find/find_all_project_usecase.dart';

part 'projects_event.dart';

part 'projects_state.dart';

class ProjectsBloc extends AbstractBloc<ProjectsEvent, ProjectsState> {
  final FindAllProjectUsecase _findAllProjectUsecase;

  ProjectsBloc({required FindAllProjectUsecase findAllProjectUsecase})
      : _findAllProjectUsecase = findAllProjectUsecase,
        super(ProjectsInitial()) {
    on<ProjectsEvent>(
      (event, emit) {},
    );
    on<FindAllProjectsEvent>(
      (event, emit) async {
        emit(AllProjectLoadingState());
        final UsecaseResult<Iterable<ProjectEntity>> projects =
            await perform(_findAllProjectUsecase);
        if (projects.hasData) {
          emit(AllProjectDataState(projects: projects.data.toList()));
        } else {
          emit(AllProjectErrorState());
        }
      },
      transformer: droppable(),
    );


  }
}
