import 'package:injectable/injectable.dart';
import 'package:portfolio_v2/data/src/base/base_api_service.dart';
import 'package:portfolio_v2/data/src/datasource/service/service_dto_mapper.dart';
import 'package:portfolio_v2/data/src/repository/service/service_dto.dart';
import 'package:portfolio_v2/data/src/repository/service/services_datasource.dart';

@Injectable(as: ServiceDatasource)
class ServiceApiService extends BaseApiService implements ServiceDatasource {
  final ServiceDtoMapper _dtoMapper = const ServiceDtoMapper();
  @override
  Future<Iterable<ServiceDto>> findAllServices() {
    return client.from('services').select(
      '''
      id,
      name,
      icon,
      description,
      available
      '''
    ).then((value) => value.map(_dtoMapper.mapToDto),);
  }

  @override
  Future<Iterable<ServiceDto>> findAllFavoriteServices() {
    return client.from('services').select(
        '''
      id,
      name,
      icon,
      description,
      available
      '''
    ).eq('favorite', true)
        .then((value) => value.map(_dtoMapper.mapToDto),);
  }

}