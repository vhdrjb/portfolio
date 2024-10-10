part of 'overview_bloc.dart';

@immutable
abstract class OverviewState {
  const OverviewState();
}

class OverviewInitial extends OverviewState {}

sealed class OverviewFavoriteProjectsState extends OverviewState {
  const OverviewFavoriteProjectsState();
}

class OverviewFavoriteProjectDataState extends OverviewFavoriteProjectsState implements DataState{
  final List<ProjectEntity> projects;

  const OverviewFavoriteProjectDataState({
    required this.projects,
  });
}

class OverviewFavoriteProjectErrorState extends OverviewFavoriteProjectsState implements ErrorState{}

class OverviewFavoriteProjectLoadingState extends OverviewFavoriteProjectsState implements LoadingState{}

sealed class OverviewLastCareerState extends OverviewState {
  const OverviewLastCareerState();
}

class OverviewLastCareerDataState extends OverviewLastCareerState {
  final List<CareerEntity> careers;

  const OverviewLastCareerDataState({
    required this.careers,
  });
}

class OverviewLastCareerLoadingState extends OverviewLastCareerState {}
class OverviewLastCareerErrorState extends OverviewLastCareerState {}


sealed class OverviewServiceState extends OverviewState {
  const OverviewServiceState();
}

class OverviewServiceDataState extends OverviewServiceState {
  final List<ServiceEntity> service;

  const OverviewServiceDataState({
    required this.service,
  });
}

class OverviewServiceLoadingState extends OverviewServiceState {}

class OverviewServiceErrorState extends OverviewServiceState {}




