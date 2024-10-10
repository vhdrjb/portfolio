import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:portfolio_v2/data/src/base/dto.dart';
import 'package:portfolio_v2/data/src/repository/company/company_dto.dart';

import 'project_stack_dto.dart';
import 'tags_dto.dart';

part 'project_dto.freezed.dart';
part 'project_dto.g.dart';

@freezed
class ProjectDto with _$ProjectDto implements Dto {
  const factory ProjectDto({
    required int id,
    required String name,
    CompanyDto? company,
    String? content,
    String? about,
    List<String>? galleryUrls,
    String? cover,
    List<ProjectStackLabelDto>? stacks,
    List<TagLabelDto>? tags,
  }) = _ProjectDto;

  factory ProjectDto.fromJson(Map<String, dynamic> json) =>
      _$ProjectDtoFromJson(json);
}
