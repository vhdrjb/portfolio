import 'dart:convert';

import 'package:portfolio_v2/data/src/base/base_dto_mapper.dart';

import '../../repository/project/dto/project_dto.dart';

class ProjectDtoMapper extends BaseDtoMapper<ProjectDto> {
  const ProjectDtoMapper();

  @override
  ProjectDto mapToDto(Map<String, dynamic> data) {
    return ProjectDto.fromJson(data);
  }
}
