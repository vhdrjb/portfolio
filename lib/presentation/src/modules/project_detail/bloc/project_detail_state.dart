part of 'project_detail_bloc.dart';

@immutable
abstract class ProjectDetailState {
  const ProjectDetailState();
}

class ProjectDetailInitial extends ProjectDetailState {}

sealed class ProjectDetails extends ProjectDetailState{
  const ProjectDetails();
}

class ProjectDetailDataState extends ProjectDetails {
  final ProjectEntity project;

  const ProjectDetailDataState({
    required this.project,
  });
}

class ProjectDetailErrorState extends ProjectDetails {
  final String? errorMessage;

  const ProjectDetailErrorState({
    required this.errorMessage,
  });
}

class ProjectDetailLoadingState extends ProjectDetails {}

