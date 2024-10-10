// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CompanyDtoImpl _$$CompanyDtoImplFromJson(Map<String, dynamic> json) =>
    _$CompanyDtoImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      url: json['url'] as String?,
      location: json['location'] as String?,
    );

Map<String, dynamic> _$$CompanyDtoImplToJson(_$CompanyDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'url': instance.url,
      'location': instance.location,
    };
