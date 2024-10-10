import 'package:portfolio_v2/domain/src/base/entity.dart';

class AchievementsEntity implements Entity {
  final String name;
  final String iconUrl;

  const AchievementsEntity({
    required this.name,
    required this.iconUrl,
  });
}