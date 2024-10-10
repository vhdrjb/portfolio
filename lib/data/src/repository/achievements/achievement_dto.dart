import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:portfolio_v2/data/src/base/dto.dart';

part 'achievement_dto.freezed.dart';
part 'achievement_dto.g.dart';

@freezed
class AchievementDto with _$AchievementDto implements Dto{
  const factory AchievementDto({
    required String name,
    @JsonKey(name: 'image')
    required String iconUrl,
  }) = _AchievementDto;



  factory AchievementDto.fromJson(Map<String, dynamic> json) =>
      _$AchievementDtoFromJson(json);
}