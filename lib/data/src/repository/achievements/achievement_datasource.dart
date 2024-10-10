import 'package:portfolio_v2/data/src/repository/achievements/achievement_dto.dart';

abstract class AchievementsDatasource {
  Future<Iterable<AchievementDto>> getAllAchievements();
}