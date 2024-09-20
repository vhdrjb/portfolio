import 'dart:async';
import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio_v2/domain/src/base/usecase/usecase.dart';
import 'package:portfolio_v2/domain/src/base/usecase/usecase_result.dart';

import 'routing_param.dart';

abstract class AbstractBloc<E, S> extends Bloc<E, S> {

  Object? _extra;

  Map<String, dynamic>? _pathParams;
  Map<String, String>? _queryParams;


  RoutingParam get routingParam {
    return RoutingParam(
        pathParam: _pathParams ?? {},
        queryParam: _queryParams ?? {},
        extra: _extra);
  }

  void updateRouting(
      {Map<String, dynamic>? pathParameters,
        Map<String, String>? queryParameters,
        Object? extra}) {
    _extra = extra;
    _pathParams = pathParameters;
    _queryParams = queryParameters;
  }

  AbstractBloc(super.initialState);

  FutureOr<UsecaseResult<T>> perform<T>(UseCase<T> runner) async {
    try {
      FutureOr<T> result =  runner.perform();
      if (result is Future<T>) {
        return UsecaseResult.success(data: await result);
      }else {
        return UsecaseResult.success(data: result);
      }
    }catch (e,stacktrace) {
      log('Error while executing ${runner.runtimeType}',name: 'Perform Error',error: e,stackTrace: stacktrace);
      return UsecaseResult.failure(error: e);
    }
  }
}
