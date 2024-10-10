import 'package:portfolio_v2/data/src/base/base_dto_mapper.dart';
import 'package:portfolio_v2/data/src/repository/achievements/achievement_dto.dart';

class AchievementDtoMapper extends BaseDtoMapper<AchievementDto> {
  const AchievementDtoMapper();

  @override
  AchievementDto mapToDto(Map<String, dynamic> data) {
    return AchievementDto.fromJson(data);
  }
}
