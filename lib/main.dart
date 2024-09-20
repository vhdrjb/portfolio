import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio_v2/infrastructure/bootstrap/launcher.dart';
import 'package:portfolio_v2/infrastructure/di/dependency_container.dart';
import 'package:portfolio_v2/infrastructure/router/app_router.dart';
import 'package:portfolio_v2/infrastructure/theme/app_theme.dart';

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

  late GoRouter _router;
  @override
  void initState() {
    super.initState();
    _router = router.generateRouter();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Vahid Rajabi Portfolio',
      routerDelegate: _router.routerDelegate,
      routeInformationParser: _router.routeInformationParser,
      theme: AppTheme.theme(brightness: Brightness.dark).themeData,
      routeInformationProvider: _router.routeInformationProvider,
      scrollBehavior: const MaterialScrollBehavior().copyWith(
        dragDevices: {PointerDeviceKind.mouse, PointerDeviceKind.touch, PointerDeviceKind.stylus, PointerDeviceKind.unknown},
      ),
    );
  }
}
