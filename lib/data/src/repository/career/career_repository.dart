import 'package:portfolio_v2/data/src/base/base_repository.dart';
import 'package:portfolio_v2/data/src/repository/career/career_datasource.dart';
import 'package:portfolio_v2/data/src/repository/career/career_entity_mapper.dart';
import 'package:portfolio_v2/domain/src/career/career_entity.dart';

class CareerRepository implements BaseRepository {
  final CareerDatasource _datasource;
  final CareerEntityMapper _careerEntityMapper = const CareerEntityMapper();

  Future<Iterable<CareerEntity>> findAllCareers() {
    return _datasource.findAllCareers().then(
      (value) {
        return value.map(_careerEntityMapper.mapToEntity);
      },
    );
  }

  Future<Iterable<CareerEntity>> findLastCareers() {
    return _datasource.findLastCareers().then((value) => value.map( _careerEntityMapper.mapToEntity,));
  }

  const CareerRepository({
    required CareerDatasource datasource,
  }) : _datasource = datasource;
}
