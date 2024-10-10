// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tags_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TagsDtoImpl _$$TagsDtoImplFromJson(Map<String, dynamic> json) =>
    _$TagsDtoImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$$TagsDtoImplToJson(_$TagsDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$TagLabelDtoImpl _$$TagLabelDtoImplFromJson(Map<String, dynamic> json) =>
    _$TagLabelDtoImpl(
      tag: TagsDto.fromJson(json['tag'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TagLabelDtoImplToJson(_$TagLabelDtoImpl instance) =>
    <String, dynamic>{
      'tag': instance.tag,
    };
