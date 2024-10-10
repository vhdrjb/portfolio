import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:portfolio_v2/data/src/base/dto.dart';

part 'project_stack_dto.freezed.dart';
part 'project_stack_dto.g.dart';

@freezed
class ProjectStackDto with _$ProjectStackDto implements Dto{
  const factory ProjectStackDto({
    required String name,
    required String color,
    required int id
  }) = _ProjectStackDto;



  factory ProjectStackDto.fromJson(Map<String, dynamic> json) =>
      _$ProjectStackDtoFromJson(json);
}

@freezed
class ProjectStackLabelDto with _$ProjectStackLabelDto implements Dto{
  const factory ProjectStackLabelDto({
    required ProjectStackDto stacks,
}) = _ProjectStackLabelDto;

  factory ProjectStackLabelDto.fromJson(Map<String, dynamic> json) =>
      _$ProjectStackLabelDtoFromJson(json);
}