import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:portfolio_v2/data/src/base/dto.dart';

part 'tags_dto.freezed.dart';
part 'tags_dto.g.dart';

@freezed
class TagsDto with _$TagsDto implements Dto{
  const factory TagsDto({
    required int id,
    required String name,
  }) = _TagsDto;



  factory TagsDto.fromJson(Map<String, dynamic> json) =>
      _$TagsDtoFromJson(json);
}

@freezed
class TagLabelDto with _$TagLabelDto implements Dto{
  const factory TagLabelDto({
    required TagsDto tag,
}) = _TagLabelDto;

  factory TagLabelDto.fromJson(Map<String, dynamic> json) =>
      _$TagLabelDtoFromJson(json);
}