import 'package:injectable/injectable.dart';
import 'package:portfolio_v2/data/src/datasource/user/user_dto_mapper.dart';
import 'package:portfolio_v2/data/src/repository/user/user_datasource.dart';
import 'package:portfolio_v2/data/src/repository/user/user_dto.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../base/base_api_service.dart';

@Injectable(as: UserDatasource)
class UserApiService extends BaseApiService implements UserDatasource {
  final UserDtoMapper _dtoMapper = const UserDtoMapper();
  @override
  Future<UserDto> getUserInfo() {
    return client.from('user_info').select(
      '''
      name,
      startFrom:start_from,
      headline,
      bookingUrl:booking_url,
      email,
      linkedin,
      avatar,
      about
      '''
    ).then((value) => _dtoMapper.mapToDto(value.first),);
  }
}