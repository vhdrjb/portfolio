import 'dart:io';

import 'package:portfolio_v2/domain/src/base/entity.dart';
import 'package:portfolio_v2/domain/src/base/text/styled_text.dart';
import 'package:portfolio_v2/domain/src/company/company_entity.dart';
import 'package:portfolio_v2/domain/src/constants/stack_entity.dart';
import 'package:portfolio_v2/domain/src/tag/tag_entity.dart';

class ProjectEntity implements Entity {
  final String name;
  final CompanyEntity? collaborateWith;
  final Iterable<StyledText>? content;
  final Iterable<String>? gallery;
  final String? about;
  final String? cover;
  final Iterable<StackEntity>? stack;
  final int id;
  final Iterable<TagEntity>? tags;

  const ProjectEntity({
    required this.name,
    this.about,
    this.gallery,
    this.cover,
    required this.id,
    this.collaborateWith,
    this.content,
    required this.stack,
    this.tags,
  });
}