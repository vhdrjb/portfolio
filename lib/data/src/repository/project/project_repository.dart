import 'dart:async';

import 'package:portfolio_v2/common/src/null_safe_extension.dart';
import 'package:portfolio_v2/data/src/repository/project/project_datasource.dart';
import 'package:portfolio_v2/data/src/repository/project/mapper/project_entity_mapper.dart';
import 'package:portfolio_v2/domain/src/project/project_entity.dart';
import 'package:portfolio_v2/domain/src/project/project_wrapper.dart';

import 'mapper/project_wrapper_mapper.dart';

class ProjectRepository {
  final ProjectDatasource _datasource;
  final ProjectEntityMapper _entityMapper = const ProjectEntityMapper();
  final ProjectWrapperMapper _projectWrapperMapper = const ProjectWrapperMapper();
  const ProjectRepository({
    required ProjectDatasource datasource,
  }) : _datasource = datasource;

  Future<Iterable<ProjectEntity>> findAllProjects() {
    return _datasource.findAllProjects().then(
          (value) => value.map(_entityMapper.mapToEntity),
        );
  }

  Future<Iterable<ProjectEntity>> findAllFavoriteProjects() {
    return _datasource.findFavoriteProjects().then(
          (value) => value.map(_entityMapper.mapToEntity),
        );
  }

  FutureOr<ProjectWrapper?> findProjectById(int id) {
    return _datasource.findById(id).then(
          (value) => value.let(
            (it) => _projectWrapperMapper.mapToWrapper(it),
          ),
        );
  }
}
