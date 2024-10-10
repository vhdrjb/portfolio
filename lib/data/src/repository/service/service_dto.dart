import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:portfolio_v2/data/src/base/dto.dart';

part 'service_dto.freezed.dart';
part 'service_dto.g.dart';

@freezed
class ServiceDto with _$ServiceDto implements Dto {
  const factory ServiceDto({
    required int id,
    required String name,
    String? icon,
    required String description,
    @Default(false) bool available,
  }) = _ServiceDto;
  


  factory ServiceDto.fromJson(Map<String, dynamic> json) =>
      _$ServiceDtoFromJson(json);
}