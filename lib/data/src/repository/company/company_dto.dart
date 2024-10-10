import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:portfolio_v2/data/src/base/dto.dart';

part 'company_dto.freezed.dart';
part 'company_dto.g.dart';

@freezed
class CompanyDto with _$CompanyDto implements Dto{
  const factory CompanyDto({
    required int id,
    required String name,
    String? url,
    String? location,

  }) = _CompanyDto;



  factory CompanyDto.fromJson(Map<String, dynamic> json) =>
      _$CompanyDtoFromJson(json);
}