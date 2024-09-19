import 'dart:async';

import 'package:flutter_test/flutter_test.dart';
import 'package:portfolio_v2/domain/domain.dart';
import 'package:portfolio_v2/domain/src/base/usecase/consumer_usecase.dart';
import 'package:portfolio_v2/domain/src/base/usecase/single_usecase.dart';
import 'package:portfolio_v2/domain/src/base/usecase/usecase_errors.dart';

void main() {
  group(
    'wrong behaviour group test',
    () {
      test(
        'consumer usecase test',
        () {
          _FakeConsumerUseCase sut = _FakeConsumerUseCase();
          expect(
              () => sut.perform(), throwsA(isA<WrongUsecaseBehaviourError>()));
        },
      );

      test(
        'single usecase test',
        () {
          _FakeSingleUseCase sut = _FakeSingleUseCase();
          expect(
              () => sut.perform(), throwsA(isA<WrongUsecaseBehaviourError>()));
        },
      );
    },
  );
}

class _FakeRequest implements Request {}

class _FakeConsumerUseCase extends ConsumerUseCase<_FakeRequest> {
  @override
  FutureOr<void> task(_FakeRequest request) {}
}

class _FakeSingleUseCase extends SingleUseCase<String, _FakeRequest> {
  @override
  FutureOr<String> task(_FakeRequest request) {
    return '';
  }
}

