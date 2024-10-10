part of 'career_bloc.dart';

@immutable
abstract class CareerState {
  const CareerState();
}

class CareerInitial extends CareerState {}

sealed class AllCareersState extends CareerState {
  const AllCareersState();
}

class AllCareerDataState extends AllCareersState {
  final List<CareerEntity> careers;

  const AllCareerDataState({
    required this.careers,
  });
}

class AllCareerLoadingState extends AllCareersState {}
class AllCareerErrorState extends AllCareersState {}
