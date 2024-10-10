import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:meta/meta.dart';

part 'sample_event.dart';

part 'sample_state.dart';

class SampleBloc extends Bloc<SampleEvent, SampleState> {
  int count = 0;

  SampleBloc() : super(SampleInitial()) {
    on<SampleEvent>((event, emit) {
    });

    on<ConcurrentEvent>(
      (event, emit) async {
        await Future.delayed(const Duration(milliseconds: 300));
        emit(FirstSampleState(message: 'message ${++count}'));
      },
      transformer: droppable()
    );
    on<SecondEvent>(
      (event, emit) async {
        await Future.delayed(const Duration(milliseconds: 300));
        emit(FirstSampleState(message: 'message ${++count}'));
      },
      transformer: droppable()
    );
  }
}
