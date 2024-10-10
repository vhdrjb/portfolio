part of 'services_bloc.dart';

@immutable
abstract class ServicesState {
  const ServicesState();
}

class ServicesInitial extends ServicesState {}

sealed class AllServicesState extends ServicesState {
  const AllServicesState();
}

class AllServicesDataState extends AllServicesState  {
  final List<ServiceEntity> services;

  const AllServicesDataState({
    required this.services,
  });
}

class AllServicesErrorState extends AllServicesState {}

class AllServicesLoadingState extends AllServicesState {}