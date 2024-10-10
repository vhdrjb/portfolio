// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tags_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TagsDto _$TagsDtoFromJson(Map<String, dynamic> json) {
  return _TagsDto.fromJson(json);
}

/// @nodoc
mixin _$TagsDto {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Serializes this TagsDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TagsDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TagsDtoCopyWith<TagsDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TagsDtoCopyWith<$Res> {
  factory $TagsDtoCopyWith(TagsDto value, $Res Function(TagsDto) then) =
      _$TagsDtoCopyWithImpl<$Res, TagsDto>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$TagsDtoCopyWithImpl<$Res, $Val extends TagsDto>
    implements $TagsDtoCopyWith<$Res> {
  _$TagsDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TagsDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TagsDtoImplCopyWith<$Res> implements $TagsDtoCopyWith<$Res> {
  factory _$$TagsDtoImplCopyWith(
          _$TagsDtoImpl value, $Res Function(_$TagsDtoImpl) then) =
      __$$TagsDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$TagsDtoImplCopyWithImpl<$Res>
    extends _$TagsDtoCopyWithImpl<$Res, _$TagsDtoImpl>
    implements _$$TagsDtoImplCopyWith<$Res> {
  __$$TagsDtoImplCopyWithImpl(
      _$TagsDtoImpl _value, $Res Function(_$TagsDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of TagsDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$TagsDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TagsDtoImpl with DiagnosticableTreeMixin implements _TagsDto {
  const _$TagsDtoImpl({required this.id, required this.name});

  factory _$TagsDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$TagsDtoImplFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TagsDto(id: $id, name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TagsDto'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TagsDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of TagsDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TagsDtoImplCopyWith<_$TagsDtoImpl> get copyWith =>
      __$$TagsDtoImplCopyWithImpl<_$TagsDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TagsDtoImplToJson(
      this,
    );
  }
}

abstract class _TagsDto implements TagsDto {
  const factory _TagsDto({required final int id, required final String name}) =
      _$TagsDtoImpl;

  factory _TagsDto.fromJson(Map<String, dynamic> json) = _$TagsDtoImpl.fromJson;

  @override
  int get id;
  @override
  String get name;

  /// Create a copy of TagsDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TagsDtoImplCopyWith<_$TagsDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TagLabelDto _$TagLabelDtoFromJson(Map<String, dynamic> json) {
  return _TagLabelDto.fromJson(json);
}

/// @nodoc
mixin _$TagLabelDto {
  TagsDto get tag => throw _privateConstructorUsedError;

  /// Serializes this TagLabelDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TagLabelDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TagLabelDtoCopyWith<TagLabelDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TagLabelDtoCopyWith<$Res> {
  factory $TagLabelDtoCopyWith(
          TagLabelDto value, $Res Function(TagLabelDto) then) =
      _$TagLabelDtoCopyWithImpl<$Res, TagLabelDto>;
  @useResult
  $Res call({TagsDto tag});

  $TagsDtoCopyWith<$Res> get tag;
}

/// @nodoc
class _$TagLabelDtoCopyWithImpl<$Res, $Val extends TagLabelDto>
    implements $TagLabelDtoCopyWith<$Res> {
  _$TagLabelDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TagLabelDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tag = null,
  }) {
    return _then(_value.copyWith(
      tag: null == tag
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as TagsDto,
    ) as $Val);
  }

  /// Create a copy of TagLabelDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TagsDtoCopyWith<$Res> get tag {
    return $TagsDtoCopyWith<$Res>(_value.tag, (value) {
      return _then(_value.copyWith(tag: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TagLabelDtoImplCopyWith<$Res>
    implements $TagLabelDtoCopyWith<$Res> {
  factory _$$TagLabelDtoImplCopyWith(
          _$TagLabelDtoImpl value, $Res Function(_$TagLabelDtoImpl) then) =
      __$$TagLabelDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TagsDto tag});

  @override
  $TagsDtoCopyWith<$Res> get tag;
}

/// @nodoc
class __$$TagLabelDtoImplCopyWithImpl<$Res>
    extends _$TagLabelDtoCopyWithImpl<$Res, _$TagLabelDtoImpl>
    implements _$$TagLabelDtoImplCopyWith<$Res> {
  __$$TagLabelDtoImplCopyWithImpl(
      _$TagLabelDtoImpl _value, $Res Function(_$TagLabelDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of TagLabelDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tag = null,
  }) {
    return _then(_$TagLabelDtoImpl(
      tag: null == tag
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as TagsDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TagLabelDtoImpl with DiagnosticableTreeMixin implements _TagLabelDto {
  const _$TagLabelDtoImpl({required this.tag});

  factory _$TagLabelDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$TagLabelDtoImplFromJson(json);

  @override
  final TagsDto tag;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TagLabelDto(tag: $tag)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TagLabelDto'))
      ..add(DiagnosticsProperty('tag', tag));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TagLabelDtoImpl &&
            (identical(other.tag, tag) || other.tag == tag));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, tag);

  /// Create a copy of TagLabelDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TagLabelDtoImplCopyWith<_$TagLabelDtoImpl> get copyWith =>
      __$$TagLabelDtoImplCopyWithImpl<_$TagLabelDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TagLabelDtoImplToJson(
      this,
    );
  }
}

abstract class _TagLabelDto implements TagLabelDto {
  const factory _TagLabelDto({required final TagsDto tag}) = _$TagLabelDtoImpl;

  factory _TagLabelDto.fromJson(Map<String, dynamic> json) =
      _$TagLabelDtoImpl.fromJson;

  @override
  TagsDto get tag;

  /// Create a copy of TagLabelDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TagLabelDtoImplCopyWith<_$TagLabelDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
