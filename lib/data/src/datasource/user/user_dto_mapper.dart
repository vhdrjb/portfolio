import 'package:portfolio_v2/data/src/base/base_dto_mapper.dart';
import 'package:portfolio_v2/data/src/repository/user/user_dto.dart';

class UserDtoMapper extends BaseDtoMapper<UserDto> {
  const UserDtoMapper
      ();

  @override
  UserDto mapToDto(Map<String, dynamic> data) {
    return UserDto.fromJson(data);
  }
}