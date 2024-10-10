import 'package:portfolio_v2/data/src/base/base_entity_mapper.dart';
import 'package:portfolio_v2/data/src/repository/achievements/achievement_dto.dart';
import 'package:portfolio_v2/domain/src/achievements/achievements_entity.dart';

class AchievementEntityMapper
    extends BaseEntityMapper<AchievementDto, AchievementsEntity> {
  const AchievementEntityMapper();

  @override
  AchievementsEntity mapToEntity(AchievementDto dto) {
    return AchievementsEntity(name: dto.name, iconUrl: dto.iconUrl);
  }
}
