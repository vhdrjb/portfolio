import 'package:injectable/injectable.dart';
import 'package:portfolio_v2/data/src/datasource/career/career_dto_mapper.dart';
import 'package:portfolio_v2/data/src/repository/career/career_datasource.dart';
import 'package:portfolio_v2/data/src/repository/career/career_dto.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../base/base_api_service.dart';

@Injectable(as: CareerDatasource)
class CareerApiService extends BaseApiService implements CareerDatasource {
  final CareerDtoMapper _careerDtoMapper = const CareerDtoMapper();

  CareerApiService();

  @override
  Future<Iterable<CareerDto>> findAllCareers() {
    return client.from('careers').select('''
            id,
            position,
            from:start_datetime,
            to:end_datetime,
            company:company_id(
                id,
               name,
               url,
               location
              )
        ''')
        .order('start_datetime', ascending: false)
        .then((value) => value.map(_careerDtoMapper.mapToDto));
  }

  @override
  Future<Iterable<CareerDto>> findLastCareers() {
    return client
        .from('careers')
        .select('''
            id,
            position,
            from:start_datetime,
            to:end_datetime,
            company:company_id(
                id,
               name,
               url,
               location
              )
        ''')
        .order('start_datetime', ascending: false)
        .limit(3)
        .then((value) => value.map(_careerDtoMapper.mapToDto));
  }
}
