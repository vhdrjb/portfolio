import 'package:portfolio_v2/common/src/null_safe_extension.dart';
import 'package:portfolio_v2/domain/src/base/text/styled_text_adapter.dart';
import 'package:portfolio_v2/domain/src/user/user_entity.dart';
import 'package:portfolio_v2/domain/src/user/user_wrapper.dart';

class UserEntityMapper {
  final StyledTextAdapter _adapter = const StyledTextAdapter();

  const UserEntityMapper();

  UserEntity map(UserWrapper wrapper) {
    return UserEntity(
        name: wrapper.name,
        avatarUrl: wrapper.avatarUrl,
        startedFrom: wrapper.startedFrom,
        headline: wrapper.headline?.let((it) => _adapter.convert(it)),
        email: wrapper.email,
        bookingUrl: wrapper.bookingUrl,
        about: wrapper.about?.let(
          (it) => _adapter.convert(it),
        ),
        linkedin: wrapper.linkedin);
  }
}
