import 'package:portfolio_v2/data/src/base/base_entity_mapper.dart';
import 'package:portfolio_v2/data/src/repository/career/career_dto.dart';
import 'package:portfolio_v2/data/src/repository/company/company_entity_mapper.dart';
import 'package:portfolio_v2/domain/src/career/career_entity.dart';

class CareerEntityMapper extends BaseEntityMapper<CareerDto, CareerEntity> {
  final CompanyEntityMapper _companyEntityMapper = const CompanyEntityMapper();

  @override
  CareerEntity mapToEntity(CareerDto dto) {
    return CareerEntity(
        position: dto.position,
        company: _companyEntityMapper.mapToEntity(dto.company),
        start: dto.from,
        end: dto.to);
  }

  const CareerEntityMapper();
}
