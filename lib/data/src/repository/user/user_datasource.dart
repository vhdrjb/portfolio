import 'package:portfolio_v2/data/src/repository/user/user_dto.dart';

abstract class UserDatasource {
  Future<UserDto> getUserInfo();
}