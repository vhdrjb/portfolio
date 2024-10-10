// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_stack_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProjectStackDtoImpl _$$ProjectStackDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$ProjectStackDtoImpl(
      name: json['name'] as String,
      color: json['color'] as String,
      id: (json['id'] as num).toInt(),
    );

Map<String, dynamic> _$$ProjectStackDtoImplToJson(
        _$ProjectStackDtoImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'color': instance.color,
      'id': instance.id,
    };

_$ProjectStackLabelDtoImpl _$$ProjectStackLabelDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$ProjectStackLabelDtoImpl(
      stacks: ProjectStackDto.fromJson(json['stacks'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ProjectStackLabelDtoImplToJson(
        _$ProjectStackLabelDtoImpl instance) =>
    <String, dynamic>{
      'stacks': instance.stacks,
    };
