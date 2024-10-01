import 'package:meta/meta.dart';
import 'package:portfolio_v2/presentation/presentation.dart';
import 'package:portfolio_v2/presentation/src/base/bloc/base_states.dart';

part 'home_event.dart';

part 'home_state.dart';

class HomeBloc extends AbstractBloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<HomeEvent>((event, emit) {});
    on<NavigateToProjectsEvent>(
      (event, emit) {
        emit(NavigateToProjectsState());
      },
    );
    on<NavigateToOverviewEvent>(
      (event, emit) {
        emit(NavigateToOverviewState());
      },
    );
    on<NavigateToServicesEvent>(
      (event, emit) {
        emit(NavigateToServicesState());
      },
    );
  }
}
