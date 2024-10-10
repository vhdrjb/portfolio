import 'package:portfolio_v2/data/src/base/base_entity_mapper.dart';
import 'package:portfolio_v2/data/src/repository/service/service_dto.dart';
import 'package:portfolio_v2/domain/src/service/service_entity.dart';

class ServiceEntityMapper extends BaseEntityMapper<ServiceDto,ServiceEntity> {
  const ServiceEntityMapper();

  @override
  ServiceEntity mapToEntity(ServiceDto dto) {
    return ServiceEntity(name: dto.name, icon: dto.icon, description: dto.description, available: dto.available,);
  }
}