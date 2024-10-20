import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio_v2/infrastructure/bootstrap/launcher.dart';
import 'package:portfolio_v2/infrastructure/di/dependency_container.dart';
import 'package:portfolio_v2/infrastructure/router/app_router.dart';
import 'package:portfolio_v2/infrastructure/theme/app_theme.dart';

import 'presentation/presentation.dart';

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
  @override
  void initState() {
    super.initState();
    _router = router;
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: ResolutionConfig.instance.getDesignSize(context),
      child: MaterialApp.router(
        title: 'Vahid Rajabi Portfolio',
        routerDelegate: _router.router.routerDelegate,
        routeInformationParser: _router.router.routeInformationParser,
        routeInformationProvider: _router.router.routeInformationProvider,
        theme: AppTheme.theme(brightness: Brightness.dark).themeData,
        scrollBehavior: const MaterialScrollBehavior().copyWith(
          dragDevices: {PointerDeviceKind.mouse, PointerDeviceKind.touch, PointerDeviceKind.stylus, PointerDeviceKind.unknown},
        ),
      ),
    );
  }
}
