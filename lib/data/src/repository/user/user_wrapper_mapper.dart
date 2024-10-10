import 'package:portfolio_v2/data/src/repository/user/user_dto.dart';
import 'package:portfolio_v2/domain/src/user/user_wrapper.dart';

class UserWrapperMapper {
  const UserWrapperMapper();

  UserWrapper mapToEntity(UserDto dto) {
    return UserWrapper(
        name: dto.name,
        avatarUrl: dto.avatar,
        about: dto.about,
        bookingUrl: dto.bookingUrl,
        email: dto.email,
        headline: dto.headline,
        linkedin: dto.linkedin,
        startedFrom: dto.startFrom);
  }
}
