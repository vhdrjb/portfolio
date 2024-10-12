import 'dart:async';

import 'package:portfolio_v2/common/src/null_safe_extension.dart';
import 'package:portfolio_v2/data/src/repository/project/project_repository.dart';
import 'package:portfolio_v2/domain/domain.dart';
import 'package:portfolio_v2/domain/src/base/text/styled_text_adapter.dart';
import 'package:portfolio_v2/domain/src/base/usecase/single_usecase.dart';
import 'package:portfolio_v2/domain/src/project/project_wrapper.dart';

import '../project_not_found_exception.dart';
import 'find_project_by_id_request.dart';

class FindProjectByIdUsecase
    extends SingleUseCase<ProjectEntity, FindProjectByIdRequest> {
  final ProjectRepository _repository;
  final StyledTextAdapter _adapter = const StyledTextAdapter();

  FindProjectByIdUsecase({
    required ProjectRepository repository,
  }) : _repository = repository;

  @override
  FutureOr<ProjectEntity> task(FindProjectByIdRequest request) async {
    if (request.id == null) {
      throw ProjectNotFoundException();
    }

    final int? id = int.tryParse(request.id!);
    if (id == null) {
      throw ProjectNotFoundException();
    }
    final ProjectWrapper? project = await _repository.findProjectById(id);
    if (project == null) {
      throw ProjectNotFoundException();
    } else {
      return ProjectEntity(
        cover: project.cover,
        name: project.name,
        id: project.id,
        stack: project.stack,
        tags: project.tags,
        about: project.about,
        collaborateWith: project.collaborateWith,
        content: project.content.let(
          (it) => _adapter.convert(it),
        ),
        gallery: project.gallery,
      );
    }
  }
}
