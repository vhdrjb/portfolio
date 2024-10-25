import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:portfolio_v2/presentation/presentation.dart';

part 'credit_event.dart';
part 'credit_state.dart';

class CreditBloc extends AbstractBloc<CreditEvent, CreditState> {
  CreditBloc() : super(CreditInitial()) {
    on<CreditEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
