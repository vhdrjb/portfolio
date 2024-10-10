import 'dart:async';

import 'package:portfolio_v2/data/src/repository/project/project_repository.dart';
import 'package:portfolio_v2/domain/src/base/usecase/supplier_usecase.dart';
import 'package:portfolio_v2/domain/src/project/project_entity.dart';

class FindFavoriteProjectsUsecase extends SupplierUsecase<Iterable<ProjectEntity>> {
  final ProjectRepository _repository;

  const FindFavoriteProjectsUsecase({
    required ProjectRepository repository,
  }) : _repository = repository;

  @override
  FutureOr<Iterable<ProjectEntity>> task() {
    return _repository.findAllFavoriteProjects();
  }
}