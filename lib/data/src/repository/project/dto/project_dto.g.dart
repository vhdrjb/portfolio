// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProjectDtoImpl _$$ProjectDtoImplFromJson(Map<String, dynamic> json) =>
    _$ProjectDtoImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      company: json['company'] == null
          ? null
          : CompanyDto.fromJson(json['company'] as Map<String, dynamic>),
      content: json['content'] as String?,
      about: json['about'] as String?,
      galleryUrls: (json['galleryUrls'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      cover: json['cover'] as String?,
      stacks: (json['stacks'] as List<dynamic>?)
          ?.map((e) => ProjectStackLabelDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      tags: (json['tags'] as List<dynamic>?)
          ?.map((e) => TagLabelDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ProjectDtoImplToJson(_$ProjectDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'company': instance.company,
      'content': instance.content,
      'about': instance.about,
      'galleryUrls': instance.galleryUrls,
      'cover': instance.cover,
      'stacks': instance.stacks,
      'tags': instance.tags,
    };
