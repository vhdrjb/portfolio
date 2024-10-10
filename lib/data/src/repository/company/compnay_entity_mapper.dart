import 'package:portfolio_v2/data/src/base/base_entity_mapper.dart';
import 'package:portfolio_v2/data/src/repository/company/company_dto.dart';
import 'package:portfolio_v2/domain/src/company/company_entity.dart';

class CompanyEntityMapper extends BaseEntityMapper<CompanyDto,CompanyEntity> {


  @override
  CompanyEntity mapToEntity(CompanyDto dto) {
    return CompanyEntity(name: dto.name, id: dto.id, location: dto.location,url: dto.url);
  }

  const CompanyEntityMapper();
}