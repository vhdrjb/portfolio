import 'package:portfolio_v2/domain/src/base/entity.dart';
import 'package:portfolio_v2/domain/src/company/company_entity.dart';
import 'package:portfolio_v2/domain/src/constants/stack_entity.dart';

class ProjectEntity implements Entity {
  final String name;
  final CompanyEntity? collaborateWith;
  final String? description;
  final String? about;
  final StackEntity stack;
  final List<String>? tags;

  const ProjectEntity({
    required this.name,
    this.about,
    this.collaborateWith,
    this.description,
    required this.stack,
    this.tags,
  });
}