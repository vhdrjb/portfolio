import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:portfolio_v2/infrastructure/bootstrap/launcher.dart';
import 'package:portfolio_v2/infrastructure/di/dependency_container.dart';
import 'package:portfolio_v2/infrastructure/router/app_router.dart';
import 'package:portfolio_v2/infrastructure/theme/app_theme.dart';
import 'package:portfolio_v2/presentation/src/base/page/responsive_notifier.dart';
import 'package:provider/provider.dart';
void main() {
  launch(
    () => const MyApp(),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  late AppRouter _router;
  late ResponsiveNotifier _notifier;
  @override
  void initState() {
    super.initState();
    _router = router;
  }

  @override
  Widget build(BuildContext context) {
    _notifier = ResponsiveNotifier(context);
    return NotificationListener(
      onNotification: (SizeChangedLayoutNotification notification) {
        final Size? size = MediaQuery.maybeOf(context)?.size;
        if (size!=null) {
          _notifier.updateScreenType(size);
        }
        return false;
      },
      child: ChangeNotifierProvider.value(
        value: _notifier,
        child: MaterialApp.router(
          debugShowCheckedModeBanner: false,
          title: 'Vahid Rajabi Portfolio',
          routerDelegate: _router.router.routerDelegate,
          routeInformationParser: _router.router.routeInformationParser,
          routeInformationProvider: _router.router.routeInformationProvider,
          theme: AppTheme.theme(brightness: Brightness.dark).themeData,
          scrollBehavior: const MaterialScrollBehavior().copyWith(
            dragDevices: {PointerDeviceKind.mouse, PointerDeviceKind.touch, PointerDeviceKind.stylus, PointerDeviceKind.unknown},
          ),
        ),
      ),
    );
  }
}
