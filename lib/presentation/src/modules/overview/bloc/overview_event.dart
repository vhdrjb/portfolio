part of 'overview_bloc.dart';

@immutable
abstract class OverviewEvent {}
class FindFavoriteProjectsEvent extends OverviewEvent {}

class FindOverviewServiceEvent extends OverviewEvent {}

class FindLastCareerEvent extends OverviewEvent {}