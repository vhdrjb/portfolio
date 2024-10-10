import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:portfolio_v2/data/src/base/dto.dart';

part 'user_dto.freezed.dart';
part 'user_dto.g.dart';

@freezed
class UserDto with _$UserDto implements Dto{
  const factory UserDto({
    required String name,
    DateTime? startFrom,
    String? headline,
    String? bookingUrl,
    String? email,
    String? linkedin,
    required String avatar,
    String? about
  }) = _UserDto;



  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);
}