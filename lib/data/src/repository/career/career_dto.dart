import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:portfolio_v2/data/src/base/dto.dart';

import '../company/company_dto.dart';

part 'career_dto.freezed.dart';
part 'career_dto.g.dart';

@freezed
class CareerDto with _$CareerDto implements Dto {
  const factory CareerDto({
    required int id,
    required String position,
    required CompanyDto company,
    required DateTime from,
     DateTime? to,


  }) = _CareerDto;



  factory CareerDto.fromJson(Map<String, dynamic> json) =>
      _$CareerDtoFromJson(json);
}