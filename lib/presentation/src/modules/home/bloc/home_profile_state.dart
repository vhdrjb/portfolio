part of 'home_bloc.dart';

sealed class HomeProfileState extends HomeState {
  const HomeProfileState();
}

class HomeProfileDataState extends HomeProfileState implements DataState {
  final UserEntity user;

  const HomeProfileDataState({
    required this.user,
  });
}

class HomeProfileLoadingState extends HomeProfileState implements LoadingState {}

class HomeProfileErrorState extends HomeProfileState implements ErrorState {}

sealed class AchievementProfileState extends HomeState {
  const AchievementProfileState();
}

class AchievementDataState extends AchievementProfileState {
  final Iterable<AchievementsEntity> achievements;

  const AchievementDataState({
    required this.achievements,
  });
}

class AchievementsErrorState extends AchievementProfileState {}

