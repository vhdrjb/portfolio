import 'package:injectable/injectable.dart';
import 'package:portfolio_v2/data/src/base/base_api_service.dart';
import 'package:portfolio_v2/data/src/repository/achievements/achievement_datasource.dart';
import 'package:portfolio_v2/data/src/repository/achievements/achievement_dto.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'achievement_dto_mapper.dart';

@Injectable(as: AchievementsDatasource)
class AchievementApiService extends BaseApiService implements AchievementsDatasource {
  final AchievementDtoMapper _dtoMapper = const AchievementDtoMapper();
  @override
  Future<Iterable<AchievementDto>> getAllAchievements() {
    return client.from('achievements')
        .select('''
            id,
            name,
            image
        ''').then((value) => value.map(_dtoMapper.mapToDto));
  }
}