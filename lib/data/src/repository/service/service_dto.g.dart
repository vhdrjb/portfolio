// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ServiceDtoImpl _$$ServiceDtoImplFromJson(Map<String, dynamic> json) =>
    _$ServiceDtoImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      icon: json['icon'] as String?,
      description: json['description'] as String,
      available: json['available'] as bool? ?? false,
    );

Map<String, dynamic> _$$ServiceDtoImplToJson(_$ServiceDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'icon': instance.icon,
      'description': instance.description,
      'available': instance.available,
    };
