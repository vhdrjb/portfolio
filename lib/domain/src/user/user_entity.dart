import 'package:portfolio_v2/domain/src/base/entity.dart';
import 'package:portfolio_v2/domain/src/base/text/styled_text.dart';

class UserEntity implements Entity {
  final String name;
  final DateTime? startedFrom;
  final Iterable<StyledText>? headline;
  final String? bookingUrl;
  final String? email;
  final String? linkedin;
  final String avatarUrl;
  final Iterable<StyledText>? about;
  const UserEntity({
    required this.name,
    this.startedFrom,
    this.headline,
    this.bookingUrl,
    this.email,
    this.linkedin,
    required this.avatarUrl,
    this.about,
  });
}