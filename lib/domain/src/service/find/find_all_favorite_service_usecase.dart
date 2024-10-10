import 'dart:async';

import 'package:portfolio_v2/data/src/repository/service/service_repository.dart';
import 'package:portfolio_v2/domain/src/base/usecase/supplier_usecase.dart';
import 'package:portfolio_v2/domain/src/service/service_entity.dart';

class FindAllFavoriteServiceUsecase extends SupplierUsecase<Iterable<ServiceEntity>>{
  final ServiceRepository _repository;

  const FindAllFavoriteServiceUsecase({
    required ServiceRepository repository,
  }) : _repository = repository;

  @override
  FutureOr<Iterable<ServiceEntity>> task() {
    return _repository.findAllFavoriteServices();
  }
}