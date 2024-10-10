import 'package:portfolio_v2/data/src/base/dto.dart';
import 'package:portfolio_v2/domain/src/base/entity.dart';

abstract class BaseEntityMapper<T extends Dto,R extends Entity> {
  const BaseEntityMapper();
  R mapToEntity(T dto);
}