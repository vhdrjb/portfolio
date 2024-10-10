// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'achievement_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AchievementDto _$AchievementDtoFromJson(Map<String, dynamic> json) {
  return _AchievementDto.fromJson(json);
}

/// @nodoc
mixin _$AchievementDto {
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'image')
  String get iconUrl => throw _privateConstructorUsedError;

  /// Serializes this AchievementDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AchievementDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AchievementDtoCopyWith<AchievementDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AchievementDtoCopyWith<$Res> {
  factory $AchievementDtoCopyWith(
          AchievementDto value, $Res Function(AchievementDto) then) =
      _$AchievementDtoCopyWithImpl<$Res, AchievementDto>;
  @useResult
  $Res call({String name, @JsonKey(name: 'image') String iconUrl});
}

/// @nodoc
class _$AchievementDtoCopyWithImpl<$Res, $Val extends AchievementDto>
    implements $AchievementDtoCopyWith<$Res> {
  _$AchievementDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AchievementDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? iconUrl = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      iconUrl: null == iconUrl
          ? _value.iconUrl
          : iconUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AchievementDtoImplCopyWith<$Res>
    implements $AchievementDtoCopyWith<$Res> {
  factory _$$AchievementDtoImplCopyWith(_$AchievementDtoImpl value,
          $Res Function(_$AchievementDtoImpl) then) =
      __$$AchievementDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, @JsonKey(name: 'image') String iconUrl});
}

/// @nodoc
class __$$AchievementDtoImplCopyWithImpl<$Res>
    extends _$AchievementDtoCopyWithImpl<$Res, _$AchievementDtoImpl>
    implements _$$AchievementDtoImplCopyWith<$Res> {
  __$$AchievementDtoImplCopyWithImpl(
      _$AchievementDtoImpl _value, $Res Function(_$AchievementDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of AchievementDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? iconUrl = null,
  }) {
    return _then(_$AchievementDtoImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      iconUrl: null == iconUrl
          ? _value.iconUrl
          : iconUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AchievementDtoImpl
    with DiagnosticableTreeMixin
    implements _AchievementDto {
  const _$AchievementDtoImpl(
      {required this.name, @JsonKey(name: 'image') required this.iconUrl});

  factory _$AchievementDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AchievementDtoImplFromJson(json);

  @override
  final String name;
  @override
  @JsonKey(name: 'image')
  final String iconUrl;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AchievementDto(name: $name, iconUrl: $iconUrl)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AchievementDto'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('iconUrl', iconUrl));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AchievementDtoImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.iconUrl, iconUrl) || other.iconUrl == iconUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, iconUrl);

  /// Create a copy of AchievementDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AchievementDtoImplCopyWith<_$AchievementDtoImpl> get copyWith =>
      __$$AchievementDtoImplCopyWithImpl<_$AchievementDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AchievementDtoImplToJson(
      this,
    );
  }
}

abstract class _AchievementDto implements AchievementDto {
  const factory _AchievementDto(
          {required final String name,
          @JsonKey(name: 'image') required final String iconUrl}) =
      _$AchievementDtoImpl;

  factory _AchievementDto.fromJson(Map<String, dynamic> json) =
      _$AchievementDtoImpl.fromJson;

  @override
  String get name;
  @override
  @JsonKey(name: 'image')
  String get iconUrl;

  /// Create a copy of AchievementDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AchievementDtoImplCopyWith<_$AchievementDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
