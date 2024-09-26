import 'package:flutter/material.dart';

abstract class AppColorScheme extends ColorScheme {
  static AppColorScheme? _darkInstance;
  static AppColorScheme? _lightInstance;

  const AppColorScheme._light({super.secondary, super.surface}) : super.light();

  const AppColorScheme._dark({super.surface}) : super.dark();

  factory AppColorScheme.light() {
    _lightInstance ??= const _LightColorScheme();
    return _lightInstance!;
  }

  factory AppColorScheme.dark() {
    _darkInstance ??= const _DarkColorScheme();
    return _darkInstance!;
  }

  Color get iconColor;
  Color get primaryText;
  Color get secondaryText;
  Color get accentColor;
  Color get loadingColor;
  Color get buttonColor;
  Color get dividerColor;
  Color get headerColor;

  Color get borderColor;
}

class _LightColorScheme extends AppColorScheme {
  const _LightColorScheme()
      : super._light(
            secondary: const Color(0xff69473F),
            surface: const Color(0xff21262D));

  @override
  Color get iconColor => throw UnimplementedError();

  @override
  Color get primaryText => throw UnimplementedError();

  @override
  Color get accentColor => throw UnimplementedError();

  @override
  Color get loadingColor => throw UnimplementedError();

  @override
  Color get secondaryText => throw UnimplementedError();

  @override
  Color get buttonColor => throw UnimplementedError();

  @override
  Color get dividerColor => throw UnimplementedError();

  @override
  Color get headerColor => throw UnimplementedError();

  @override
  Color get borderColor => throw UnimplementedError();
}

class _DarkColorScheme extends AppColorScheme {
  const _DarkColorScheme() : super._dark(
      surface: const Color(0xff21262D)
  );

  @override
  Color get iconColor => const Color(0xffd9d9da);
@override
  Color get primaryText => const Color(0xffC9D1D9);

  @override
  Color get accentColor => const Color(0xffDC7D62);

  @override
  Color get loadingColor => const Color(0xff8c8c8c);

  @override
  Color get secondaryText => const Color(0xff8B949E);

  @override
  Color get buttonColor => const Color(0xff2B303B);

  @override
  Color get dividerColor => const Color(0xff3E434C);

  @override
  Color get headerColor => const Color(0xff0D1117);

  @override
  Color get borderColor => const Color(0xff3E434C);

}
