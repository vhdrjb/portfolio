import 'dart:async';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:meta/meta.dart';
import 'package:portfolio_v2/domain/domain.dart';
import 'package:portfolio_v2/domain/src/base/usecase/usecase_result.dart';
import 'package:portfolio_v2/domain/src/project/find/find_project_by_id_request.dart';
import 'package:portfolio_v2/domain/src/project/find/find_project_by_id_usecase.dart';
import 'package:portfolio_v2/domain/src/project/project_not_found_exception.dart';
import 'package:portfolio_v2/presentation/presentation.dart';

part 'project_detail_event.dart';

part 'project_detail_state.dart';

class ProjectDetailBloc
    extends AbstractBloc<ProjectDetailEvent, ProjectDetailState> {
  final FindProjectByIdUsecase _findProjectByIdUsecase;

  ProjectDetailBloc({required FindProjectByIdUsecase findProjectByIdUsecase})
      : _findProjectByIdUsecase = findProjectByIdUsecase,
        super(ProjectDetailInitial()) {
    on<ProjectDetailEvent>((event, emit) {});
    on<GetProjectInfoEvent>(
      (event, emit) async {
        _findProjectByIdUsecase.setRequestParam(
            FindProjectByIdRequest(id: routingParam.pathParam['projectId']));
        final UsecaseResult<ProjectEntity> project =
            await perform(_findProjectByIdUsecase);
        if (project.hasData) {
          emit(ProjectDetailDataState(project: project.data));
        } else {
          if (project.error is ProjectNotFoundException) {
            emit(const ProjectDetailErrorState(
                errorMessage: 'project not found'));
          } else {
            emit(const ProjectDetailErrorState(errorMessage: null));
          }
        }
      },
      transformer: droppable(),
    );
  }
}
