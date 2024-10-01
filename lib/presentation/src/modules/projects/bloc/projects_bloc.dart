import 'dart:async';

import 'package:meta/meta.dart';
import 'package:portfolio_v2/presentation/presentation.dart';

part 'projects_event.dart';
part 'projects_state.dart';

class ProjectsBloc extends AbstractBloc<ProjectsEvent, ProjectsState> {
  ProjectsBloc() : super(ProjectsInitial()) {
    on<ProjectsEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
