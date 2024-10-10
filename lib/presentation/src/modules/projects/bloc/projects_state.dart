part of 'projects_bloc.dart';

@immutable
abstract class ProjectsState {
  const ProjectsState();
}

class ProjectsInitial extends ProjectsState {}


sealed class AllProjectState extends ProjectsState {
  const AllProjectState();
}

class AllProjectDataState extends AllProjectState {
  final List<ProjectEntity> projects;

  const AllProjectDataState({
    required this.projects,
  });
}

class AllProjectErrorState extends AllProjectState {}

class AllProjectLoadingState extends AllProjectState {}