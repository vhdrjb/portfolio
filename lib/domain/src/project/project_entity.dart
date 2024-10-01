import 'package:portfolio_v2/domain/src/base/entity.dart';
import 'package:portfolio_v2/domain/src/company/company_entity.dart';
import 'package:portfolio_v2/domain/src/constants/stack_entity.dart';

class ProjectEntity implements Entity {
  final String name;
  final CompanyEntity? collaborateWith;
  final String? description;
  final List<StackEntity> stacks;
  final List<String>? tags;

  const ProjectEntity({
    required this.name,
    this.collaborateWith,
    this.description,
    required this.stacks,
    this.tags,
  });
}