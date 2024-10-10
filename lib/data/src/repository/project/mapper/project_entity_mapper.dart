import 'package:portfolio_v2/data/src/base/base_entity_mapper.dart';
import 'package:portfolio_v2/data/src/repository/company/compnay_entity_mapper.dart';
import 'package:portfolio_v2/data/src/repository/project/mapper/stack_entity_mapper.dart';
import 'package:portfolio_v2/data/src/repository/project/mapper/tag_entity_mapper.dart';
import 'package:portfolio_v2/domain/src/constants/stack_entity.dart';
import 'package:portfolio_v2/domain/src/project/project_entity.dart';

import '../dto/project_dto.dart';

class ProjectEntityMapper extends BaseEntityMapper<ProjectDto, ProjectEntity> {
  final CompanyEntityMapper _companyEntityMapper = const CompanyEntityMapper();
  final StackEntityMapper _stackEntityMapper = const StackEntityMapper();
  final TagEntityMapper _tagEntityMapper = const TagEntityMapper();

  const ProjectEntityMapper();

  @override
  ProjectEntity mapToEntity(ProjectDto dto) {
    return ProjectEntity(
        name: dto.name,
        id: dto.id,
        content: dto.content,
        about: dto.about,
        collaborateWith: dto.company == null
            ? null
            : _companyEntityMapper.mapToEntity(dto.company!),
        gallery: dto.galleryUrls,
        tags: dto.tags?.map(
          (e) => _tagEntityMapper.mapToEntity(e.tag),
        ),
        stack: dto.stacks?.map(
          (e) => _stackEntityMapper.mapToEntity(e.stacks),
        ));
  }
}
