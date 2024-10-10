import 'package:portfolio_v2/data/src/repository/career/career_dto.dart';

abstract class CareerDatasource {
  const CareerDatasource();
  Future<Iterable<CareerDto>> findAllCareers();
  Future<Iterable<CareerDto>> findLastCareers();
}