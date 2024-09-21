import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio_v2/infrastructure/di/dependency_container.dart';

typedef Application = Widget Function();

Future<void> launch(Application application) async {

  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  configureDependencies();

  usePathUrlStrategy();

  GoRouter.optionURLReflectsImperativeAPIs = true;

  runApp(application());
  FlutterNativeSplash.remove();
}
