import 'package:portfolio_v2/data/src/repository/service/service_entity_mapper.dart';
import 'package:portfolio_v2/data/src/repository/service/services_datasource.dart';
import 'package:portfolio_v2/domain/src/service/service_entity.dart';

class ServiceRepository  {
  final ServiceDatasource _datasource;
  final ServiceEntityMapper _entityMapper = const ServiceEntityMapper();

  const ServiceRepository({
    required ServiceDatasource datasource,
  }) : _datasource = datasource;

  Future<Iterable<ServiceEntity>> findAllServices() {
    return _datasource.findAllServices().then((value) => value.map(_entityMapper.mapToEntity));
  }
  Future<Iterable<ServiceEntity>> findAllFavoriteServices() {
    return _datasource.findAllFavoriteServices().then((value) => value.map(_entityMapper.mapToEntity));
  }


}