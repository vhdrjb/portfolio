import 'package:portfolio_v2/data/src/repository/project/project_datasource.dart';
import 'package:portfolio_v2/data/src/repository/project/mapper/project_entity_mapper.dart';
import 'package:portfolio_v2/domain/src/project/project_entity.dart';

class ProjectRepository {
  final ProjectDatasource _datasource;
  final ProjectEntityMapper _entityMapper = const ProjectEntityMapper();

  const ProjectRepository({
    required ProjectDatasource datasource,
  }) : _datasource = datasource;

  Future<Iterable<ProjectEntity>> findAllProjects() {
    return _datasource.findAllProjects().then(
          (value) => value.map(_entityMapper.mapToEntity),
        );
  }

  Future<Iterable<ProjectEntity>> findAllFavoriteProjects() {
    return _datasource.findFavoriteProjects().then((value) => value.map(_entityMapper.mapToEntity),);
  }
}
