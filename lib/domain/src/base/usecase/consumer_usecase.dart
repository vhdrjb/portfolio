import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:portfolio_v2/domain/domain.dart';
import 'package:portfolio_v2/domain/src/base/usecase/usecase.dart';
import 'package:portfolio_v2/domain/src/base/usecase/usecase_errors.dart';

abstract class ConsumerUseCase<R extends Request> implements UseCase<void> {

  R? _request;

  @override
  FutureOr<void> perform() {
    assert(_request != null, throw WrongUsecaseBehaviourError(
        message: 'set request parameter by calling `setRequestParam` or use appropriate usecase '));
    return task(_request!);
  }

  @protected
  FutureOr<void> task(R request);

  void setRequestParam(R request) => _request = request;

}