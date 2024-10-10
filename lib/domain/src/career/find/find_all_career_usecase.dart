import 'dart:async';

import 'package:portfolio_v2/data/src/repository/career/career_repository.dart';
import 'package:portfolio_v2/domain/src/base/usecase/supplier_usecase.dart';
import 'package:portfolio_v2/domain/src/career/career_entity.dart';

class FindAllCareerUsecase extends SupplierUsecase<Iterable<CareerEntity>> {
  final CareerRepository _repository;

  @override
  FutureOr<Iterable<CareerEntity>> task() {
    return _repository.findAllCareers();
  }

  const FindAllCareerUsecase({
    required CareerRepository repository,
  }) : _repository = repository;
}
