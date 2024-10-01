import 'dart:async';

import 'package:meta/meta.dart';

import '../../../base/bloc/abstract_bloc.dart';

part 'overview_event.dart';
part 'overview_state.dart';

class OverviewBloc extends AbstractBloc<OverviewEvent, OverviewState> {
  OverviewBloc() : super(OverviewInitial()) {
    on<OverviewEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
