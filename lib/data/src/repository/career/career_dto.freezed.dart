// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'career_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CareerDto _$CareerDtoFromJson(Map<String, dynamic> json) {
  return _CareerDto.fromJson(json);
}

/// @nodoc
mixin _$CareerDto {
  int get id => throw _privateConstructorUsedError;
  String get position => throw _privateConstructorUsedError;
  CompanyDto get company => throw _privateConstructorUsedError;
  DateTime get from => throw _privateConstructorUsedError;
  DateTime? get to => throw _privateConstructorUsedError;

  /// Serializes this CareerDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CareerDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CareerDtoCopyWith<CareerDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CareerDtoCopyWith<$Res> {
  factory $CareerDtoCopyWith(CareerDto value, $Res Function(CareerDto) then) =
      _$CareerDtoCopyWithImpl<$Res, CareerDto>;
  @useResult
  $Res call(
      {int id,
      String position,
      CompanyDto company,
      DateTime from,
      DateTime? to});

  $CompanyDtoCopyWith<$Res> get company;
}

/// @nodoc
class _$CareerDtoCopyWithImpl<$Res, $Val extends CareerDto>
    implements $CareerDtoCopyWith<$Res> {
  _$CareerDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CareerDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? position = null,
    Object? company = null,
    Object? from = null,
    Object? to = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as String,
      company: null == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as CompanyDto,
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as DateTime,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }

  /// Create a copy of CareerDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CompanyDtoCopyWith<$Res> get company {
    return $CompanyDtoCopyWith<$Res>(_value.company, (value) {
      return _then(_value.copyWith(company: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CareerDtoImplCopyWith<$Res>
    implements $CareerDtoCopyWith<$Res> {
  factory _$$CareerDtoImplCopyWith(
          _$CareerDtoImpl value, $Res Function(_$CareerDtoImpl) then) =
      __$$CareerDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String position,
      CompanyDto company,
      DateTime from,
      DateTime? to});

  @override
  $CompanyDtoCopyWith<$Res> get company;
}

/// @nodoc
class __$$CareerDtoImplCopyWithImpl<$Res>
    extends _$CareerDtoCopyWithImpl<$Res, _$CareerDtoImpl>
    implements _$$CareerDtoImplCopyWith<$Res> {
  __$$CareerDtoImplCopyWithImpl(
      _$CareerDtoImpl _value, $Res Function(_$CareerDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of CareerDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? position = null,
    Object? company = null,
    Object? from = null,
    Object? to = freezed,
  }) {
    return _then(_$CareerDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as String,
      company: null == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as CompanyDto,
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as DateTime,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CareerDtoImpl with DiagnosticableTreeMixin implements _CareerDto {
  const _$CareerDtoImpl(
      {required this.id,
      required this.position,
      required this.company,
      required this.from,
      this.to});

  factory _$CareerDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CareerDtoImplFromJson(json);

  @override
  final int id;
  @override
  final String position;
  @override
  final CompanyDto company;
  @override
  final DateTime from;
  @override
  final DateTime? to;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CareerDto(id: $id, position: $position, company: $company, from: $from, to: $to)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CareerDto'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('position', position))
      ..add(DiagnosticsProperty('company', company))
      ..add(DiagnosticsProperty('from', from))
      ..add(DiagnosticsProperty('to', to));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CareerDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.company, company) || other.company == company) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, position, company, from, to);

  /// Create a copy of CareerDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CareerDtoImplCopyWith<_$CareerDtoImpl> get copyWith =>
      __$$CareerDtoImplCopyWithImpl<_$CareerDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CareerDtoImplToJson(
      this,
    );
  }
}

abstract class _CareerDto implements CareerDto {
  const factory _CareerDto(
      {required final int id,
      required final String position,
      required final CompanyDto company,
      required final DateTime from,
      final DateTime? to}) = _$CareerDtoImpl;

  factory _CareerDto.fromJson(Map<String, dynamic> json) =
      _$CareerDtoImpl.fromJson;

  @override
  int get id;
  @override
  String get position;
  @override
  CompanyDto get company;
  @override
  DateTime get from;
  @override
  DateTime? get to;

  /// Create a copy of CareerDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CareerDtoImplCopyWith<_$CareerDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
