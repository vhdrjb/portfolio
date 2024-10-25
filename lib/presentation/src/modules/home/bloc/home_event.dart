part of 'home_bloc.dart';

@immutable
abstract class HomeEvent {}

class NavigateToProjectsEvent extends HomeEvent {}

class NavigateToOverviewEvent extends HomeEvent {}

class NavigateToServicesEvent extends HomeEvent {}

class NavigateToCareerEvent extends HomeEvent {}
class NavigateToCreditEvent extends HomeEvent {}

class GetUserInfoEvent extends HomeEvent {}

class GetUserHighlightsEvent extends HomeEvent {}

class OpenProjectByIdEvent extends HomeEvent {
  final int id;

  OpenProjectByIdEvent({
    required this.id,
  });
}
