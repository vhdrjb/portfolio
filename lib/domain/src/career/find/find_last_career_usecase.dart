import 'dart:async';

import 'package:portfolio_v2/data/src/repository/career/career_repository.dart';
import 'package:portfolio_v2/domain/domain.dart';
import 'package:portfolio_v2/domain/src/base/usecase/supplier_usecase.dart';

class FindLastCareerUsecase extends SupplierUsecase<Iterable<CareerEntity>> {
  final CareerRepository  _repository;

  const FindLastCareerUsecase({
    required CareerRepository repository,
  }) : _repository = repository;

  @override
  FutureOr<Iterable<CareerEntity>> task() {
    return _repository.findLastCareers();
  }
}