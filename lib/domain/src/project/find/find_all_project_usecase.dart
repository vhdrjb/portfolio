import 'dart:async';

import 'package:portfolio_v2/data/src/repository/project/project_repository.dart';
import 'package:portfolio_v2/domain/domain.dart';
import 'package:portfolio_v2/domain/src/base/usecase/supplier_usecase.dart';

class FindAllProjectUsecase extends SupplierUsecase<Iterable<ProjectEntity>> {
  final ProjectRepository _repository;

  const FindAllProjectUsecase({
    required ProjectRepository repository,
  }) : _repository = repository;

  @override
  FutureOr<Iterable<ProjectEntity>> task() {
    return _repository.findAllProjects();
  }
}