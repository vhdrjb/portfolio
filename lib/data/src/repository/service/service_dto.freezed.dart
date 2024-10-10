// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'service_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ServiceDto _$ServiceDtoFromJson(Map<String, dynamic> json) {
  return _ServiceDto.fromJson(json);
}

/// @nodoc
mixin _$ServiceDto {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get icon => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  bool get available => throw _privateConstructorUsedError;

  /// Serializes this ServiceDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ServiceDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ServiceDtoCopyWith<ServiceDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceDtoCopyWith<$Res> {
  factory $ServiceDtoCopyWith(
          ServiceDto value, $Res Function(ServiceDto) then) =
      _$ServiceDtoCopyWithImpl<$Res, ServiceDto>;
  @useResult
  $Res call(
      {int id, String name, String? icon, String description, bool available});
}

/// @nodoc
class _$ServiceDtoCopyWithImpl<$Res, $Val extends ServiceDto>
    implements $ServiceDtoCopyWith<$Res> {
  _$ServiceDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ServiceDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? icon = freezed,
    Object? description = null,
    Object? available = null,
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
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      available: null == available
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServiceDtoImplCopyWith<$Res>
    implements $ServiceDtoCopyWith<$Res> {
  factory _$$ServiceDtoImplCopyWith(
          _$ServiceDtoImpl value, $Res Function(_$ServiceDtoImpl) then) =
      __$$ServiceDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id, String name, String? icon, String description, bool available});
}

/// @nodoc
class __$$ServiceDtoImplCopyWithImpl<$Res>
    extends _$ServiceDtoCopyWithImpl<$Res, _$ServiceDtoImpl>
    implements _$$ServiceDtoImplCopyWith<$Res> {
  __$$ServiceDtoImplCopyWithImpl(
      _$ServiceDtoImpl _value, $Res Function(_$ServiceDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ServiceDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? icon = freezed,
    Object? description = null,
    Object? available = null,
  }) {
    return _then(_$ServiceDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      available: null == available
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServiceDtoImpl with DiagnosticableTreeMixin implements _ServiceDto {
  const _$ServiceDtoImpl(
      {required this.id,
      required this.name,
      this.icon,
      required this.description,
      this.available = false});

  factory _$ServiceDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServiceDtoImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String? icon;
  @override
  final String description;
  @override
  @JsonKey()
  final bool available;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ServiceDto(id: $id, name: $name, icon: $icon, description: $description, available: $available)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ServiceDto'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('icon', icon))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('available', available));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.available, available) ||
                other.available == available));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, icon, description, available);

  /// Create a copy of ServiceDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServiceDtoImplCopyWith<_$ServiceDtoImpl> get copyWith =>
      __$$ServiceDtoImplCopyWithImpl<_$ServiceDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServiceDtoImplToJson(
      this,
    );
  }
}

abstract class _ServiceDto implements ServiceDto {
  const factory _ServiceDto(
      {required final int id,
      required final String name,
      final String? icon,
      required final String description,
      final bool available}) = _$ServiceDtoImpl;

  factory _ServiceDto.fromJson(Map<String, dynamic> json) =
      _$ServiceDtoImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String? get icon;
  @override
  String get description;
  @override
  bool get available;

  /// Create a copy of ServiceDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServiceDtoImplCopyWith<_$ServiceDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
