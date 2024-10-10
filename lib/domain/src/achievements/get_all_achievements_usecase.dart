import 'dart:async';

import 'package:portfolio_v2/data/src/repository/achievements/achievements_repository.dart';
import 'package:portfolio_v2/domain/src/achievements/achievements_entity.dart';
import 'package:portfolio_v2/domain/src/base/usecase/supplier_usecase.dart';

class GetAllAchievementsUsecase
    extends SupplierUsecase<Iterable<AchievementsEntity>> {
  final AchievementsRepository _repository;

  const GetAllAchievementsUsecase({
    required AchievementsRepository repository,
  }) : _repository = repository;

  @override
  FutureOr<Iterable<AchievementsEntity>> task() {
    return _repository.findAllAchievements();
  }
}
