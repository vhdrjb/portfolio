import 'dart:async';

import 'package:meta/meta.dart';
import 'package:portfolio_v2/presentation/presentation.dart';

part 'career_event.dart';
part 'career_state.dart';

class CareerBloc extends AbstractBloc<CareerEvent, CareerState> {
  CareerBloc() : super(CareerInitial()) {
    on<CareerEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
