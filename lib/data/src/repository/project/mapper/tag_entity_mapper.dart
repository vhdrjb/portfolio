import 'package:portfolio_v2/data/src/base/base_entity_mapper.dart';
import 'package:portfolio_v2/domain/src/tag/tag_entity.dart';

import '../dto/tags_dto.dart';

class TagEntityMapper extends BaseEntityMapper<TagsDto,TagEntity>{
  const TagEntityMapper();
  @override
  TagEntity mapToEntity(TagsDto dto) {
    return TagEntity(name: dto.name, id: dto.id);
  }

}