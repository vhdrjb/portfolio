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
  Color get linkColor;
  Color get borderColor;
  Color get highlightColor;
  Color get shimmerColor;
  Color get placeHolderColor;
  Color get shimmerBaseColor;
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

  @override
  Color get linkColor => throw UnimplementedError();

  @override
  Color get highlightColor => throw UnimplementedError();

  @override
  Color get placeHolderColor => throw UnimplementedError();

  @override
  Color get shimmerColor => throw UnimplementedError();

  @override
  Color get shimmerBaseColor => throw UnimplementedError();
}

class _DarkColorScheme extends AppColorScheme {
  const _DarkColorScheme() : super._dark(
      surface: const Color(0xff212830)
  );

  @override
  Color get iconColor => const Color(0xffd9d9da);
@override
  Color get primaryText => const Color(0xffd1d7e0);

  @override
  Color get accentColor => const Color(0xffDC7D62);

  @override
  Color get loadingColor => const Color(0xff8c8c8c);

  @override
  Color get secondaryText => const Color(0xff9198a1);

  @override
  Color get buttonColor => const Color(0xff2B303B);

  @override
  Color get dividerColor => const Color(0xff3E434C);

  @override
  Color get headerColor => const Color(0xff151b23);

  @override
  Color get borderColor => const Color(0xff3E434C);

  @override
  Color get linkColor => const Color(0xff478be6);

  @override
  Color get highlightColor =>const Color(0xff2fbb4f);

  @override
  Color get placeHolderColor => const Color(0xff3d444f);

  @override
  Color get shimmerColor => const Color(0xff0D1117);

  @override
  Color get shimmerBaseColor => const Color(0xff22272e);



}
