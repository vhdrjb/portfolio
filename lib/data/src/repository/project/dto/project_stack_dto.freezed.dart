// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project_stack_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProjectStackDto _$ProjectStackDtoFromJson(Map<String, dynamic> json) {
  return _ProjectStackDto.fromJson(json);
}

/// @nodoc
mixin _$ProjectStackDto {
  String get name => throw _privateConstructorUsedError;
  String get color => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;

  /// Serializes this ProjectStackDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProjectStackDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProjectStackDtoCopyWith<ProjectStackDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectStackDtoCopyWith<$Res> {
  factory $ProjectStackDtoCopyWith(
          ProjectStackDto value, $Res Function(ProjectStackDto) then) =
      _$ProjectStackDtoCopyWithImpl<$Res, ProjectStackDto>;
  @useResult
  $Res call({String name, String color, int id});
}

/// @nodoc
class _$ProjectStackDtoCopyWithImpl<$Res, $Val extends ProjectStackDto>
    implements $ProjectStackDtoCopyWith<$Res> {
  _$ProjectStackDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProjectStackDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? color = null,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProjectStackDtoImplCopyWith<$Res>
    implements $ProjectStackDtoCopyWith<$Res> {
  factory _$$ProjectStackDtoImplCopyWith(_$ProjectStackDtoImpl value,
          $Res Function(_$ProjectStackDtoImpl) then) =
      __$$ProjectStackDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String color, int id});
}

/// @nodoc
class __$$ProjectStackDtoImplCopyWithImpl<$Res>
    extends _$ProjectStackDtoCopyWithImpl<$Res, _$ProjectStackDtoImpl>
    implements _$$ProjectStackDtoImplCopyWith<$Res> {
  __$$ProjectStackDtoImplCopyWithImpl(
      _$ProjectStackDtoImpl _value, $Res Function(_$ProjectStackDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProjectStackDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? color = null,
    Object? id = null,
  }) {
    return _then(_$ProjectStackDtoImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProjectStackDtoImpl
    with DiagnosticableTreeMixin
    implements _ProjectStackDto {
  const _$ProjectStackDtoImpl(
      {required this.name, required this.color, required this.id});

  factory _$ProjectStackDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProjectStackDtoImplFromJson(json);

  @override
  final String name;
  @override
  final String color;
  @override
  final int id;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProjectStackDto(name: $name, color: $color, id: $id)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProjectStackDto'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('color', color))
      ..add(DiagnosticsProperty('id', id));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectStackDtoImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, color, id);

  /// Create a copy of ProjectStackDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectStackDtoImplCopyWith<_$ProjectStackDtoImpl> get copyWith =>
      __$$ProjectStackDtoImplCopyWithImpl<_$ProjectStackDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProjectStackDtoImplToJson(
      this,
    );
  }
}

abstract class _ProjectStackDto implements ProjectStackDto {
  const factory _ProjectStackDto(
      {required final String name,
      required final String color,
      required final int id}) = _$ProjectStackDtoImpl;

  factory _ProjectStackDto.fromJson(Map<String, dynamic> json) =
      _$ProjectStackDtoImpl.fromJson;

  @override
  String get name;
  @override
  String get color;
  @override
  int get id;

  /// Create a copy of ProjectStackDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProjectStackDtoImplCopyWith<_$ProjectStackDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProjectStackLabelDto _$ProjectStackLabelDtoFromJson(Map<String, dynamic> json) {
  return _ProjectStackLabelDto.fromJson(json);
}

/// @nodoc
mixin _$ProjectStackLabelDto {
  ProjectStackDto get stacks => throw _privateConstructorUsedError;

  /// Serializes this ProjectStackLabelDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProjectStackLabelDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProjectStackLabelDtoCopyWith<ProjectStackLabelDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectStackLabelDtoCopyWith<$Res> {
  factory $ProjectStackLabelDtoCopyWith(ProjectStackLabelDto value,
          $Res Function(ProjectStackLabelDto) then) =
      _$ProjectStackLabelDtoCopyWithImpl<$Res, ProjectStackLabelDto>;
  @useResult
  $Res call({ProjectStackDto stacks});

  $ProjectStackDtoCopyWith<$Res> get stacks;
}

/// @nodoc
class _$ProjectStackLabelDtoCopyWithImpl<$Res,
        $Val extends ProjectStackLabelDto>
    implements $ProjectStackLabelDtoCopyWith<$Res> {
  _$ProjectStackLabelDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProjectStackLabelDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stacks = null,
  }) {
    return _then(_value.copyWith(
      stacks: null == stacks
          ? _value.stacks
          : stacks // ignore: cast_nullable_to_non_nullable
              as ProjectStackDto,
    ) as $Val);
  }

  /// Create a copy of ProjectStackLabelDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProjectStackDtoCopyWith<$Res> get stacks {
    return $ProjectStackDtoCopyWith<$Res>(_value.stacks, (value) {
      return _then(_value.copyWith(stacks: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProjectStackLabelDtoImplCopyWith<$Res>
    implements $ProjectStackLabelDtoCopyWith<$Res> {
  factory _$$ProjectStackLabelDtoImplCopyWith(_$ProjectStackLabelDtoImpl value,
          $Res Function(_$ProjectStackLabelDtoImpl) then) =
      __$$ProjectStackLabelDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ProjectStackDto stacks});

  @override
  $ProjectStackDtoCopyWith<$Res> get stacks;
}

/// @nodoc
class __$$ProjectStackLabelDtoImplCopyWithImpl<$Res>
    extends _$ProjectStackLabelDtoCopyWithImpl<$Res, _$ProjectStackLabelDtoImpl>
    implements _$$ProjectStackLabelDtoImplCopyWith<$Res> {
  __$$ProjectStackLabelDtoImplCopyWithImpl(_$ProjectStackLabelDtoImpl _value,
      $Res Function(_$ProjectStackLabelDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProjectStackLabelDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stacks = null,
  }) {
    return _then(_$ProjectStackLabelDtoImpl(
      stacks: null == stacks
          ? _value.stacks
          : stacks // ignore: cast_nullable_to_non_nullable
              as ProjectStackDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProjectStackLabelDtoImpl
    with DiagnosticableTreeMixin
    implements _ProjectStackLabelDto {
  const _$ProjectStackLabelDtoImpl({required this.stacks});

  factory _$ProjectStackLabelDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProjectStackLabelDtoImplFromJson(json);

  @override
  final ProjectStackDto stacks;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProjectStackLabelDto(stacks: $stacks)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProjectStackLabelDto'))
      ..add(DiagnosticsProperty('stacks', stacks));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectStackLabelDtoImpl &&
            (identical(other.stacks, stacks) || other.stacks == stacks));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, stacks);

  /// Create a copy of ProjectStackLabelDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectStackLabelDtoImplCopyWith<_$ProjectStackLabelDtoImpl>
      get copyWith =>
          __$$ProjectStackLabelDtoImplCopyWithImpl<_$ProjectStackLabelDtoImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProjectStackLabelDtoImplToJson(
      this,
    );
  }
}

abstract class _ProjectStackLabelDto implements ProjectStackLabelDto {
  const factory _ProjectStackLabelDto({required final ProjectStackDto stacks}) =
      _$ProjectStackLabelDtoImpl;

  factory _ProjectStackLabelDto.fromJson(Map<String, dynamic> json) =
      _$ProjectStackLabelDtoImpl.fromJson;

  @override
  ProjectStackDto get stacks;

  /// Create a copy of ProjectStackLabelDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProjectStackLabelDtoImplCopyWith<_$ProjectStackLabelDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
