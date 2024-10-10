import 'package:portfolio_v2/data/src/repository/achievements/achievement_datasource.dart';
import 'package:portfolio_v2/domain/src/achievements/achievements_entity.dart';

import 'achievement_entity_mapper.dart';

class AchievementsRepository {
  final AchievementEntityMapper _entityMapper = const AchievementEntityMapper();
  final AchievementsDatasource _datasource;

  const AchievementsRepository({
    required AchievementsDatasource datasource,
  }) : _datasource = datasource;

  Future<Iterable<AchievementsEntity>> findAllAchievements() {
    return _datasource.getAllAchievements().then((value) => value.map(_entityMapper.mapToEntity));
  }
}