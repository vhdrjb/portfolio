import 'dart:async';

import 'package:flutter_test/flutter_test.dart';
import 'package:portfolio_v2/domain/src/base/usecase/supplier_usecase.dart';
import 'package:bloc_test/bloc_test.dart';

import 'fake_bloc.dart';

void main() {
  group(
    'abstract bloc test',
    () {
      blocTest(
        'test usecase success',
        build: () => FakeBloc(),
        act: (bloc) => bloc.add(SuccessEvent()),
        expect: () => [const ResultState(result: 'data')],
      );

      blocTest(
        'test usecase with wait success',
        build: () => FakeBloc(),
        act: (bloc) => bloc.add(SuccessWithWaitEvent()),
        wait: const Duration(seconds: 1),
        expect: () => [const ResultState(result: 'data')],
      );
      blocTest(
        'test usecase failure',
        build: () => FakeBloc(),
        act: (bloc) => bloc.add(FailureEvent()),
        expect: () => [const ResultState(result: 'error')],
      );
    },
  );
}

class SuccessUsecase extends SupplierUsecase<String> {
  @override
  FutureOr<String> task() {
    return 'data';
  }
}

class SuccessWithWaitUsecase extends SupplierUsecase<String> {
  @override
  FutureOr<String> task() {
    return Future.delayed(const Duration(seconds: 1)).then(
      (value) => "data",
    );
  }
}

class FailureUsecase extends SupplierUsecase<String> {
  @override
  FutureOr<String> task() {
    throw 'error';
  }
}
