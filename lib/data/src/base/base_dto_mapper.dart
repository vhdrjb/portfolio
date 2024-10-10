import 'package:portfolio_v2/data/src/base/dto.dart';

abstract class BaseDtoMapper<T extends Dto> {
  const BaseDtoMapper();
  T mapToDto(Map<String,dynamic> data);
}