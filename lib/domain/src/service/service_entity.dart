import 'package:portfolio_v2/domain/src/base/entity.dart';

class ServiceEntity implements Entity {
  final String name;
  final String? icon;
  final String description;
  final bool available;

  const ServiceEntity({
    required this.name,
    this.icon,
    required this.description,
    required this.available,
  });
}
