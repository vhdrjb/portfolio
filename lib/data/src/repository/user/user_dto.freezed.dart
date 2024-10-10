// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserDto _$UserDtoFromJson(Map<String, dynamic> json) {
  return _UserDto.fromJson(json);
}

/// @nodoc
mixin _$UserDto {
  String get name => throw _privateConstructorUsedError;
  DateTime? get startFrom => throw _privateConstructorUsedError;
  String? get headline => throw _privateConstructorUsedError;
  String? get bookingUrl => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get linkedin => throw _privateConstructorUsedError;
  String get avatar => throw _privateConstructorUsedError;
  String? get about => throw _privateConstructorUsedError;

  /// Serializes this UserDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserDtoCopyWith<UserDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDtoCopyWith<$Res> {
  factory $UserDtoCopyWith(UserDto value, $Res Function(UserDto) then) =
      _$UserDtoCopyWithImpl<$Res, UserDto>;
  @useResult
  $Res call(
      {String name,
      DateTime? startFrom,
      String? headline,
      String? bookingUrl,
      String? email,
      String? linkedin,
      String avatar,
      String? about});
}

/// @nodoc
class _$UserDtoCopyWithImpl<$Res, $Val extends UserDto>
    implements $UserDtoCopyWith<$Res> {
  _$UserDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? startFrom = freezed,
    Object? headline = freezed,
    Object? bookingUrl = freezed,
    Object? email = freezed,
    Object? linkedin = freezed,
    Object? avatar = null,
    Object? about = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      startFrom: freezed == startFrom
          ? _value.startFrom
          : startFrom // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      headline: freezed == headline
          ? _value.headline
          : headline // ignore: cast_nullable_to_non_nullable
              as String?,
      bookingUrl: freezed == bookingUrl
          ? _value.bookingUrl
          : bookingUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      linkedin: freezed == linkedin
          ? _value.linkedin
          : linkedin // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
      about: freezed == about
          ? _value.about
          : about // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserDtoImplCopyWith<$Res> implements $UserDtoCopyWith<$Res> {
  factory _$$UserDtoImplCopyWith(
          _$UserDtoImpl value, $Res Function(_$UserDtoImpl) then) =
      __$$UserDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      DateTime? startFrom,
      String? headline,
      String? bookingUrl,
      String? email,
      String? linkedin,
      String avatar,
      String? about});
}

/// @nodoc
class __$$UserDtoImplCopyWithImpl<$Res>
    extends _$UserDtoCopyWithImpl<$Res, _$UserDtoImpl>
    implements _$$UserDtoImplCopyWith<$Res> {
  __$$UserDtoImplCopyWithImpl(
      _$UserDtoImpl _value, $Res Function(_$UserDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? startFrom = freezed,
    Object? headline = freezed,
    Object? bookingUrl = freezed,
    Object? email = freezed,
    Object? linkedin = freezed,
    Object? avatar = null,
    Object? about = freezed,
  }) {
    return _then(_$UserDtoImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      startFrom: freezed == startFrom
          ? _value.startFrom
          : startFrom // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      headline: freezed == headline
          ? _value.headline
          : headline // ignore: cast_nullable_to_non_nullable
              as String?,
      bookingUrl: freezed == bookingUrl
          ? _value.bookingUrl
          : bookingUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      linkedin: freezed == linkedin
          ? _value.linkedin
          : linkedin // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
      about: freezed == about
          ? _value.about
          : about // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserDtoImpl with DiagnosticableTreeMixin implements _UserDto {
  const _$UserDtoImpl(
      {required this.name,
      this.startFrom,
      this.headline,
      this.bookingUrl,
      this.email,
      this.linkedin,
      required this.avatar,
      this.about});

  factory _$UserDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserDtoImplFromJson(json);

  @override
  final String name;
  @override
  final DateTime? startFrom;
  @override
  final String? headline;
  @override
  final String? bookingUrl;
  @override
  final String? email;
  @override
  final String? linkedin;
  @override
  final String avatar;
  @override
  final String? about;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserDto(name: $name, startFrom: $startFrom, headline: $headline, bookingUrl: $bookingUrl, email: $email, linkedin: $linkedin, avatar: $avatar, about: $about)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserDto'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('startFrom', startFrom))
      ..add(DiagnosticsProperty('headline', headline))
      ..add(DiagnosticsProperty('bookingUrl', bookingUrl))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('linkedin', linkedin))
      ..add(DiagnosticsProperty('avatar', avatar))
      ..add(DiagnosticsProperty('about', about));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDtoImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.startFrom, startFrom) ||
                other.startFrom == startFrom) &&
            (identical(other.headline, headline) ||
                other.headline == headline) &&
            (identical(other.bookingUrl, bookingUrl) ||
                other.bookingUrl == bookingUrl) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.linkedin, linkedin) ||
                other.linkedin == linkedin) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.about, about) || other.about == about));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, startFrom, headline,
      bookingUrl, email, linkedin, avatar, about);

  /// Create a copy of UserDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDtoImplCopyWith<_$UserDtoImpl> get copyWith =>
      __$$UserDtoImplCopyWithImpl<_$UserDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserDtoImplToJson(
      this,
    );
  }
}

abstract class _UserDto implements UserDto {
  const factory _UserDto(
      {required final String name,
      final DateTime? startFrom,
      final String? headline,
      final String? bookingUrl,
      final String? email,
      final String? linkedin,
      required final String avatar,
      final String? about}) = _$UserDtoImpl;

  factory _UserDto.fromJson(Map<String, dynamic> json) = _$UserDtoImpl.fromJson;

  @override
  String get name;
  @override
  DateTime? get startFrom;
  @override
  String? get headline;
  @override
  String? get bookingUrl;
  @override
  String? get email;
  @override
  String? get linkedin;
  @override
  String get avatar;
  @override
  String? get about;

  /// Create a copy of UserDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserDtoImplCopyWith<_$UserDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
