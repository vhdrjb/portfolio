import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter/foundation.dart';
import 'package:portfolio_v2/domain/src/achievements/achievements_entity.dart';
import 'package:portfolio_v2/domain/src/achievements/get_all_achievements_usecase.dart';
import 'package:portfolio_v2/domain/src/base/usecase/usecase_result.dart';
import 'package:portfolio_v2/domain/src/user/find/get_user_information_usecase.dart';
import 'package:portfolio_v2/domain/src/user/user_entity.dart';
import 'package:portfolio_v2/presentation/presentation.dart';
import 'package:portfolio_v2/presentation/src/base/bloc/base_states.dart';
import 'package:widget_component_annotation/widget_component_annotation.dart';

part 'home_event.dart';

part 'home_state.dart';

part 'home_profile_state.dart';

class HomeBloc extends AbstractBloc<HomeEvent, HomeState> {
  final GetUserInformationUsecase _getUserInformationUsecase;
  final GetAllAchievementsUsecase _getAllAchievementsUsecase;

  HomeBloc(
      {required GetUserInformationUsecase getUserInformationUsecase,
      required GetAllAchievementsUsecase getAllAchievementsUsecase})
      : _getUserInformationUsecase = getUserInformationUsecase,
        _getAllAchievementsUsecase = getAllAchievementsUsecase,
        super(HomeInitial()) {
    on<HomeEvent>((event, emit) {});

    on<NavigateToProjectsEvent>((event, emit) {
      emit(NavigateToProjectsState());
    }, transformer: droppable());

    on<NavigateToOverviewEvent>((event, emit) {
      emit(NavigateToOverviewState());
    }, transformer: droppable());

    on<NavigateToServicesEvent>((event, emit) {
      emit(NavigateToServicesState());
    }, transformer: droppable());

    on<NavigateToCareerEvent>((event, emit) {
      emit(NavigateToCareerState());
    }, transformer: droppable());

    on<GetUserInfoEvent>((event, emit) async {
      final UsecaseResult<UserEntity> userInfoResult =
          await perform(_getUserInformationUsecase);
      if (userInfoResult.hasData) {
        emit(HomeProfileDataState(user: userInfoResult.data));
        add(GetUserHighlightsEvent());
      } else {
        emit(HomeProfileErrorState());
      }
    }, transformer: droppable());

    on<GetUserHighlightsEvent>((event, emit) async {
      final UsecaseResult<Iterable<AchievementsEntity>> userInfoResult =
          await perform(_getAllAchievementsUsecase);
      if (userInfoResult.hasData) {
        emit(AchievementDataState(achievements: userInfoResult.data));
      }
    }, transformer: droppable());

    on<NavigateToCreditEvent>((event, emit) {
      emit(NavigateToCreditState());
    }, transformer: droppable());

    on<OpenProjectByIdEvent>((event, emit) {
      emit(NavigateToProjectDetailState(id: event.id.toString()));
    }, transformer: droppable());
  }
}
