import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio_v2/infrastructure/di/dependency_container.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

typedef Application = Widget Function();

Future<void> launch(Application application) async {
  await dotenv.load(fileName: '.env');

  WidgetsFlutterBinding.ensureInitialized();
  // supabase
  Supabase.initialize(
      debug: !kReleaseMode,
      storageOptions: const StorageClientOptions(retryAttempts: 2),
      url: dotenv.env['SERVER_URL']!,
      anonKey: dotenv.env['ANNO_KEY']!);

  configureDependencies();

  usePathUrlStrategy();

  GoRouter.optionURLReflectsImperativeAPIs = true;

  runApp(application());
}
