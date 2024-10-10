import 'package:portfolio_v2/data/src/base/base_entity_mapper.dart';
import 'package:portfolio_v2/data/src/repository/project/dto/project_stack_dto.dart';
import 'package:portfolio_v2/domain/src/constants/stack_entity.dart';

class StackEntityMapper extends BaseEntityMapper<ProjectStackDto, StackEntity> {
  const StackEntityMapper();

  @override
  StackEntity mapToEntity(ProjectStackDto dto) {
    return StackEntity(name: dto.name, id: dto.id, color: dto.color);
  }
}
