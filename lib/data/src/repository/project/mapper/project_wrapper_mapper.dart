import 'package:portfolio_v2/data/src/repository/project/dto/project_dto.dart';
import 'package:portfolio_v2/data/src/repository/project/mapper/stack_entity_mapper.dart';
import 'package:portfolio_v2/data/src/repository/project/mapper/tag_entity_mapper.dart';
import 'package:portfolio_v2/domain/src/project/project_wrapper.dart';

import '../../company/company_entity_mapper.dart';

class ProjectWrapperMapper {
  final CompanyEntityMapper _companyEntityMapper = const CompanyEntityMapper();
  final StackEntityMapper _stackEntityMapper = const StackEntityMapper();
  final TagEntityMapper _tagEntityMapper = const TagEntityMapper();

  const ProjectWrapperMapper();

  ProjectWrapper mapToWrapper(ProjectDto dto) {
    return ProjectWrapper(
        name: dto.name,
        id: dto.id,
        content: dto.content,
        cover: dto.cover,
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
