import 'package:injectable/injectable.dart';
import 'package:portfolio_v2/data/src/datasource/project/project_dto_mapper.dart';
import 'package:portfolio_v2/data/src/repository/project/project_datasource.dart';
import 'package:portfolio_v2/data/src/repository/project/dto/project_dto.dart';
import '../../base/base_api_service.dart';

@Injectable(as: ProjectDatasource)
class ProjectApiService extends BaseApiService implements ProjectDatasource {
  final ProjectDtoMapper _dtoMapper = const ProjectDtoMapper();

  @override
  Future<Iterable<ProjectDto>> findAllProjects() {
    return client.from('projects').select('''
        id,
        name,
        about,
        company:companies(*),
        stacks:project_stacks(
          stacks(*)
        ),
        tags:project_tags(
          tag:skills(*)
        )
      ''').then(
      (value) => value.map(_dtoMapper.mapToDto),
    );
  }

  @override
  Future<ProjectDto?> findById(int id) {
    return client
        .from('projects')
        .select('''
        id,
        name,
        about,
        content,
        galleryUrls:images,
        cover,
        company:companies(*),
        stacks:project_stacks(
          stacks(*)
        ),
        tags:project_tags(
          tag:skills(*)
        )
      ''')
        .eq('id', id)
        .then((value) => value.map(_dtoMapper.mapToDto).first);
  }

  @override
  Future<Iterable<ProjectDto>> findFavoriteProjects() {
    return client.from('projects').select('''
        id,
        name,
        about,
        company:companies(*),
        stacks:project_stacks(
          stacks(*)
        )
      ''')
        .eq('favorite', 'true')
        .then(
          (value) => value.map(_dtoMapper.mapToDto),
        );
  }
}
