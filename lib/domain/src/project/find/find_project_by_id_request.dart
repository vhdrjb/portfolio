import 'package:portfolio_v2/domain/domain.dart';

class FindProjectByIdRequest implements Request{
  final String? id;

  const FindProjectByIdRequest({
    required this.id,
  });
}