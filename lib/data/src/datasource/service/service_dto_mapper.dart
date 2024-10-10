import 'package:portfolio_v2/data/src/base/base_dto_mapper.dart';
import 'package:portfolio_v2/data/src/repository/service/service_dto.dart';

class ServiceDtoMapper extends BaseDtoMapper<ServiceDto> {
  const ServiceDtoMapper();

  @override
  ServiceDto mapToDto(Map<String, dynamic> data) {
    return ServiceDto.fromJson(data);
  }
}