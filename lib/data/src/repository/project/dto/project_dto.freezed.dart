// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProjectDto _$ProjectDtoFromJson(Map<String, dynamic> json) {
  return _ProjectDto.fromJson(json);
}

/// @nodoc
mixin _$ProjectDto {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  CompanyDto? get company => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  String? get about => throw _privateConstructorUsedError;
  List<String>? get galleryUrls => throw _privateConstructorUsedError;
  String? get cover => throw _privateConstructorUsedError;
  List<ProjectStackLabelDto>? get stacks => throw _privateConstructorUsedError;
  List<TagLabelDto>? get tags => throw _privateConstructorUsedError;

  /// Serializes this ProjectDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProjectDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProjectDtoCopyWith<ProjectDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectDtoCopyWith<$Res> {
  factory $ProjectDtoCopyWith(
          ProjectDto value, $Res Function(ProjectDto) then) =
      _$ProjectDtoCopyWithImpl<$Res, ProjectDto>;
  @useResult
  $Res call(
      {int id,
      String name,
      CompanyDto? company,
      String? content,
      String? about,
      List<String>? galleryUrls,
      String? cover,
      List<ProjectStackLabelDto>? stacks,
      List<TagLabelDto>? tags});

  $CompanyDtoCopyWith<$Res>? get company;
}

/// @nodoc
class _$ProjectDtoCopyWithImpl<$Res, $Val extends ProjectDto>
    implements $ProjectDtoCopyWith<$Res> {
  _$ProjectDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProjectDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? company = freezed,
    Object? content = freezed,
    Object? about = freezed,
    Object? galleryUrls = freezed,
    Object? cover = freezed,
    Object? stacks = freezed,
    Object? tags = freezed,
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
      company: freezed == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as CompanyDto?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      about: freezed == about
          ? _value.about
          : about // ignore: cast_nullable_to_non_nullable
              as String?,
      galleryUrls: freezed == galleryUrls
          ? _value.galleryUrls
          : galleryUrls // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      cover: freezed == cover
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String?,
      stacks: freezed == stacks
          ? _value.stacks
          : stacks // ignore: cast_nullable_to_non_nullable
              as List<ProjectStackLabelDto>?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<TagLabelDto>?,
    ) as $Val);
  }

  /// Create a copy of ProjectDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CompanyDtoCopyWith<$Res>? get company {
    if (_value.company == null) {
      return null;
    }

    return $CompanyDtoCopyWith<$Res>(_value.company!, (value) {
      return _then(_value.copyWith(company: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProjectDtoImplCopyWith<$Res>
    implements $ProjectDtoCopyWith<$Res> {
  factory _$$ProjectDtoImplCopyWith(
          _$ProjectDtoImpl value, $Res Function(_$ProjectDtoImpl) then) =
      __$$ProjectDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      CompanyDto? company,
      String? content,
      String? about,
      List<String>? galleryUrls,
      String? cover,
      List<ProjectStackLabelDto>? stacks,
      List<TagLabelDto>? tags});

  @override
  $CompanyDtoCopyWith<$Res>? get company;
}

/// @nodoc
class __$$ProjectDtoImplCopyWithImpl<$Res>
    extends _$ProjectDtoCopyWithImpl<$Res, _$ProjectDtoImpl>
    implements _$$ProjectDtoImplCopyWith<$Res> {
  __$$ProjectDtoImplCopyWithImpl(
      _$ProjectDtoImpl _value, $Res Function(_$ProjectDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProjectDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? company = freezed,
    Object? content = freezed,
    Object? about = freezed,
    Object? galleryUrls = freezed,
    Object? cover = freezed,
    Object? stacks = freezed,
    Object? tags = freezed,
  }) {
    return _then(_$ProjectDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      company: freezed == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as CompanyDto?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      about: freezed == about
          ? _value.about
          : about // ignore: cast_nullable_to_non_nullable
              as String?,
      galleryUrls: freezed == galleryUrls
          ? _value._galleryUrls
          : galleryUrls // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      cover: freezed == cover
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String?,
      stacks: freezed == stacks
          ? _value._stacks
          : stacks // ignore: cast_nullable_to_non_nullable
              as List<ProjectStackLabelDto>?,
      tags: freezed == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<TagLabelDto>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProjectDtoImpl with DiagnosticableTreeMixin implements _ProjectDto {
  const _$ProjectDtoImpl(
      {required this.id,
      required this.name,
      this.company,
      this.content,
      this.about,
      final List<String>? galleryUrls,
      this.cover,
      final List<ProjectStackLabelDto>? stacks,
      final List<TagLabelDto>? tags})
      : _galleryUrls = galleryUrls,
        _stacks = stacks,
        _tags = tags;

  factory _$ProjectDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProjectDtoImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final CompanyDto? company;
  @override
  final String? content;
  @override
  final String? about;
  final List<String>? _galleryUrls;
  @override
  List<String>? get galleryUrls {
    final value = _galleryUrls;
    if (value == null) return null;
    if (_galleryUrls is EqualUnmodifiableListView) return _galleryUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? cover;
  final List<ProjectStackLabelDto>? _stacks;
  @override
  List<ProjectStackLabelDto>? get stacks {
    final value = _stacks;
    if (value == null) return null;
    if (_stacks is EqualUnmodifiableListView) return _stacks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<TagLabelDto>? _tags;
  @override
  List<TagLabelDto>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProjectDto(id: $id, name: $name, company: $company, content: $content, about: $about, galleryUrls: $galleryUrls, cover: $cover, stacks: $stacks, tags: $tags)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProjectDto'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('company', company))
      ..add(DiagnosticsProperty('content', content))
      ..add(DiagnosticsProperty('about', about))
      ..add(DiagnosticsProperty('galleryUrls', galleryUrls))
      ..add(DiagnosticsProperty('cover', cover))
      ..add(DiagnosticsProperty('stacks', stacks))
      ..add(DiagnosticsProperty('tags', tags));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.company, company) || other.company == company) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.about, about) || other.about == about) &&
            const DeepCollectionEquality()
                .equals(other._galleryUrls, _galleryUrls) &&
            (identical(other.cover, cover) || other.cover == cover) &&
            const DeepCollectionEquality().equals(other._stacks, _stacks) &&
            const DeepCollectionEquality().equals(other._tags, _tags));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      company,
      content,
      about,
      const DeepCollectionEquality().hash(_galleryUrls),
      cover,
      const DeepCollectionEquality().hash(_stacks),
      const DeepCollectionEquality().hash(_tags));

  /// Create a copy of ProjectDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectDtoImplCopyWith<_$ProjectDtoImpl> get copyWith =>
      __$$ProjectDtoImplCopyWithImpl<_$ProjectDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProjectDtoImplToJson(
      this,
    );
  }
}

abstract class _ProjectDto implements ProjectDto {
  const factory _ProjectDto(
      {required final int id,
      required final String name,
      final CompanyDto? company,
      final String? content,
      final String? about,
      final List<String>? galleryUrls,
      final String? cover,
      final List<ProjectStackLabelDto>? stacks,
      final List<TagLabelDto>? tags}) = _$ProjectDtoImpl;

  factory _ProjectDto.fromJson(Map<String, dynamic> json) =
      _$ProjectDtoImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  CompanyDto? get company;
  @override
  String? get content;
  @override
  String? get about;
  @override
  List<String>? get galleryUrls;
  @override
  String? get cover;
  @override
  List<ProjectStackLabelDto>? get stacks;
  @override
  List<TagLabelDto>? get tags;

  /// Create a copy of ProjectDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProjectDtoImplCopyWith<_$ProjectDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
