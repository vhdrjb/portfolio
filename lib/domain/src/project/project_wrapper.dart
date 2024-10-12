import 'dart:io';

import 'package:portfolio_v2/domain/src/base/entity.dart';
import 'package:portfolio_v2/domain/src/company/company_entity.dart';
import 'package:portfolio_v2/domain/src/constants/stack_entity.dart';
import 'package:portfolio_v2/domain/src/tag/tag_entity.dart';

class ProjectWrapper {
  final String name;
  final String? cover;
  final CompanyEntity? collaborateWith;
  final String? content;
  final Iterable<String>? gallery;
  final String? about;
  final Iterable<StackEntity>? stack;
  final int id;
  final Iterable<TagEntity>? tags;

  ProjectWrapper({
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
