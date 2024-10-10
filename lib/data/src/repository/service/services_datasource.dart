import 'package:portfolio_v2/data/src/repository/service/service_dto.dart';

abstract class ServiceDatasource {
  Future<Iterable<ServiceDto>> findAllServices();
  Future<Iterable<ServiceDto>> findAllFavoriteServices();
}