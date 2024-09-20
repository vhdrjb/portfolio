import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:portfolio_v2/domain/src/base/usecase/usecase_result.dart';
import 'package:portfolio_v2/presentation/src/base/bloc/abstract_bloc.dart';

import 'abstract_bloc_test.dart';

part 'fake_event.dart';

part 'fake_state.dart';

class FakeBloc extends AbstractBloc<FakeEvent, FakeState> {
  FakeBloc() : super(FakeInitial()) {
    on<SuccessEvent>(
      (event, emit) async {
        SuccessUsecase successUsecase = SuccessUsecase();
        UsecaseResult<String> result = await perform(successUsecase);
        if (result.hasData) {
          emit(ResultState(result: result.data));
        } else {
          emit(ResultState(result: result.error));
        }
      },
    );
    on<SuccessWithWaitEvent>(
      (event, emit) async {
        SuccessWithWaitUsecase successUsecase = SuccessWithWaitUsecase();
        UsecaseResult<String> result = await perform(successUsecase);
        if (result.hasData) {
          emit(ResultState(result: result.data));
        } else {
          emit(ResultState(result: result.error));
        }
      },
    );
    on<FailureEvent>((event,emit) async {
      FailureUsecase successUsecase = FailureUsecase();
      UsecaseResult<String> result = await perform(successUsecase);
      if (result.hasData) {
        emit(ResultState(result: result.data));
      } else {
        emit(ResultState(result: result.error));
      }
    });
  }
}
