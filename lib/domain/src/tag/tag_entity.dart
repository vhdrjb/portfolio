import 'package:portfolio_v2/domain/src/base/entity.dart';

class TagEntity implements Entity {
  final String name;
  final int id;

  const TagEntity({
    required this.name,
    required this.id,
  });
}