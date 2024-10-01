import 'package:portfolio_v2/domain/src/base/entity.dart';
import 'package:portfolio_v2/domain/src/company/company_entity.dart';

class CareerEntity implements Entity {
  final String position;
  final CompanyEntity company;
  final DateTime start;
  final DateTime? end;

  const CareerEntity({
    required this.position,
    required this.company,
    required this.start,
    this.end,
  });
}