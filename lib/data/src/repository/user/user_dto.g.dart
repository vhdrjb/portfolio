// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserDtoImpl _$$UserDtoImplFromJson(Map<String, dynamic> json) =>
    _$UserDtoImpl(
      name: json['name'] as String,
      startFrom: json['startFrom'] == null
          ? null
          : DateTime.parse(json['startFrom'] as String),
      headline: json['headline'] as String?,
      bookingUrl: json['bookingUrl'] as String?,
      email: json['email'] as String?,
      linkedin: json['linkedin'] as String?,
      avatar: json['avatar'] as String,
      about: json['about'] as String?,
    );

Map<String, dynamic> _$$UserDtoImplToJson(_$UserDtoImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'startFrom': instance.startFrom?.toIso8601String(),
      'headline': instance.headline,
      'bookingUrl': instance.bookingUrl,
      'email': instance.email,
      'linkedin': instance.linkedin,
      'avatar': instance.avatar,
      'about': instance.about,
    };
