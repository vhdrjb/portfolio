
import 'dto/project_dto.dart';

abstract  class ProjectDatasource  {
  Future<Iterable<ProjectDto>> findAllProjects();
  Future<Iterable<ProjectDto>> findFavoriteProjects();
  Future<ProjectDto?> findById(int id);
}