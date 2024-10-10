// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'career_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CareerDtoImpl _$$CareerDtoImplFromJson(Map<String, dynamic> json) =>
    _$CareerDtoImpl(
      id: (json['id'] as num).toInt(),
      position: json['position'] as String,
      company: CompanyDto.fromJson(json['company'] as Map<String, dynamic>),
      from: DateTime.parse(json['from'] as String),
      to: json['to'] == null ? null : DateTime.parse(json['to'] as String),
    );

Map<String, dynamic> _$$CareerDtoImplToJson(_$CareerDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'position': instance.position,
      'company': instance.company,
      'from': instance.from.toIso8601String(),
      'to': instance.to?.toIso8601String(),
    };
