part of 'home_bloc.dart';

@immutable
abstract class HomeState {}

class HomeInitial extends HomeState {}

class NavigateToOverviewState extends MoveState implements HomeState {
  NavigateToOverviewState():super(path: Routes.overview);
}
class NavigateToProjectsState extends MoveState implements HomeState {
  NavigateToProjectsState():super(path: Routes.projects);
}
class NavigateToServicesState extends MoveState implements HomeState {
  NavigateToServicesState():super(path: Routes.services);
}

class NavigateToCareerState extends MoveState implements HomeState  {
  NavigateToCareerState():super(path: Routes.careers);

}
