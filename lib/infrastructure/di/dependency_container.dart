import 'package:portfolio_v2/infrastructure/router/app_router.dart';

import 'dependency_container.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final _getIt = GetIt.instance;

@InjectableInit(
  initializerName: 'init', // default
  preferRelativeImports: true, // default
  asExtension: true, // default
)
Future<void> configureDependencies() async {
  _getIt.init();
}

AppRouter get router => _getIt.get<AppRouter>();