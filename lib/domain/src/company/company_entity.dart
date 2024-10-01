import 'package:portfolio_v2/domain/src/base/entity.dart';

class CompanyEntity implements Entity {
  final String name;
  final String? url;
  final String location;

  const CompanyEntity({
    required this.name,
    this.url,
    required this.location,
  });
}