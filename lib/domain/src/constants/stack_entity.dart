import 'package:portfolio_v2/domain/src/base/entity.dart';

class StackEntity implements Entity {
  final String name;
  final String color;

  const StackEntity({
    required this.name,
    required this.color,
  });
}