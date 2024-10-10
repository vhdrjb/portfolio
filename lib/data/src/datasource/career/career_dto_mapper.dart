import 'package:portfolio_v2/data/src/base/base_dto_mapper.dart';
import 'package:portfolio_v2/data/src/repository/career/career_dto.dart';

class CareerDtoMapper extends BaseDtoMapper<CareerDto>{
  const CareerDtoMapper();

  @override
  CareerDto mapToDto(Map<String, dynamic> data) {
    return CareerDto.fromJson(data);
  }

}