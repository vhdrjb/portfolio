import 'dart:async';

import 'package:portfolio_v2/data/src/repository/user/user_repository.dart';
import 'package:portfolio_v2/domain/src/base/usecase/supplier_usecase.dart';
import 'package:portfolio_v2/domain/src/user/user_entity.dart';
import 'package:portfolio_v2/domain/src/user/user_entity_mapper.dart';

class GetUserInformationUsecase extends SupplierUsecase<UserEntity> {
  final UserRepository _repository;
  final UserEntityMapper _entityMapper = const UserEntityMapper();

  const GetUserInformationUsecase({
    required UserRepository repository,
  }) : _repository = repository;

  @override
  FutureOr<UserEntity> task() {
    return _repository.getUserInfo().then(
          (value) => _entityMapper.map(value),
        );
  }
}
