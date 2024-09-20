import 'dart:async';
import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:portfolio_v2/domain/src/base/usecase/usecase.dart';
import 'package:portfolio_v2/domain/src/base/usecase/usecase_errors.dart';

abstract class SupplierUsecase<T> extends UseCase<T> {
  @override
  FutureOr<T> perform() {
   return task();
  }

  @protected
  FutureOr<T> task();
}
