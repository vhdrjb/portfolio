import 'dart:async';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:meta/meta.dart';
import 'package:portfolio_v2/domain/domain.dart';
import 'package:portfolio_v2/domain/src/base/usecase/usecase_result.dart';
import 'package:portfolio_v2/domain/src/career/find/find_last_career_usecase.dart';
import 'package:portfolio_v2/domain/src/service/find/find_all_favorite_service_usecase.dart';
import 'package:portfolio_v2/domain/src/service/service_entity.dart';
import 'package:portfolio_v2/domain/src/user/user_entity.dart';
import 'package:widget_component_annotation/widget_component_annotation.dart';

import '../../../base/bloc/abstract_bloc.dart';

part 'overview_event.dart';

part 'overview_state.dart';

class OverviewBloc extends AbstractBloc<OverviewEvent, OverviewState> {
  final FindFavoriteProjectsUsecase _favoriteProjectsUsecase;
  final FindAllFavoriteServiceUsecase _favoriteServiceUsecase;
  final FindLastCareerUsecase _findLastCareerUsecase;

  OverviewBloc(
      {required FindFavoriteProjectsUsecase findFavoriteProjectsUsecase,
      required FindLastCareerUsecase findLastCareerUsecase,
      required FindAllFavoriteServiceUsecase favoriteServiceUsecase})
      : _favoriteProjectsUsecase = findFavoriteProjectsUsecase,
        _favoriteServiceUsecase = favoriteServiceUsecase,
        _findLastCareerUsecase = findLastCareerUsecase,
        super(OverviewInitial()) {
    on<OverviewEvent>((event, emit) {});

    on<FindFavoriteProjectsEvent>(
      (event, emit) async {
        emit(OverviewServiceLoadingState());
        final UsecaseResult<Iterable<ProjectEntity>> favorites =
            await perform(_favoriteProjectsUsecase);
        if (favorites.hasData) {
          emit(OverviewFavoriteProjectDataState(
              projects: favorites.data.toList()));
        } else {
          emit(OverviewFavoriteProjectErrorState());
        }
      },
      transformer: droppable(),
    );

    on<FindOverviewServiceEvent>(
      (event, emit) async {
        emit(OverviewServiceLoadingState());
        final UsecaseResult<Iterable<ServiceEntity>> services =
            await perform(_favoriteServiceUsecase);
        if (services.hasData) {
          emit(OverviewServiceDataState(service: services.data.toList()));
        } else {
          emit(OverviewServiceErrorState());
        }
      },
      transformer: droppable(),
    );

    on<FindLastCareerEvent>(
      (event, emit) async {
        emit(OverviewLastCareerLoadingState());
        final UsecaseResult<Iterable<CareerEntity>> careers =
            await perform(_findLastCareerUsecase);
        if (careers.hasData) {
          emit(OverviewLastCareerDataState(careers: careers.data.toList()));
        } else {
          emit(OverviewServiceErrorState());
        }
      },
      transformer: droppable(),
    );
  }
}
