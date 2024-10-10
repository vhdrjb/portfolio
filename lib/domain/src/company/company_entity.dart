import 'package:portfolio_v2/domain/src/base/entity.dart';

class CompanyEntity implements Entity {
  final String name;
  final String? url;
  final String? location;
  final int id;

  const CompanyEntity({
    required this.name,
    required this.id,
    this.url,
    required this.location,
  });
}