import 'package:portfolio_v2/data/src/repository/user/user_datasource.dart';
import 'package:portfolio_v2/domain/src/user/user_wrapper.dart';

import 'user_wrapper_mapper.dart';

class UserRepository {
  final UserDatasource _datasource;
  final UserWrapperMapper _wrapperMapper =  const UserWrapperMapper();

  const UserRepository({
    required UserDatasource datasource,
  }) : _datasource = datasource;

  Future<UserWrapper> getUserInfo() {
    return _datasource.getUserInfo().then((value) => _wrapperMapper.mapToEntity(value),);
  }
}