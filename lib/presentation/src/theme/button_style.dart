import 'package:flutter/material.dart';
import 'package:portfolio_v2/presentation/src/extensions/context_extensions.dart';
import 'package:portfolio_v2/presentation/src/theme/dimensions.dart';

class AppButtonStyle extends ButtonStyle {
  final BuildContext context;

  @override
  WidgetStateProperty<double?>? get elevation => const WidgetStatePropertyAll(0);

  @override
  WidgetStateProperty<OutlinedBorder?>? get shape =>
      WidgetStatePropertyAll(RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Dimensions.buttonBorderRadius),
          side: BorderSide(
              color: context.appColorScheme.dividerColor, width: 1)));

  @override
  WidgetStateProperty<EdgeInsetsGeometry?>? get padding =>
      const WidgetStatePropertyAll(EdgeInsets.symmetric(
          vertical: Dimensions.buttonVerticalPadding,
          horizontal: Dimensions.margin_32));

  @override
  WidgetStateProperty<Color?>? get foregroundColor =>
      WidgetStatePropertyAll(context.appColorScheme.primaryText);

  @override
  WidgetStateProperty<Color?>? get backgroundColor =>
      WidgetStatePropertyAll(context.appColorScheme.buttonColor);

  const AppButtonStyle({
    required this.context,
  });
}
class AppMobileButtonStyle extends ButtonStyle {
  final BuildContext context;

  @override
  WidgetStateProperty<double?>? get elevation => const WidgetStatePropertyAll(0);

  @override
  WidgetStateProperty<OutlinedBorder?>? get shape =>
      WidgetStatePropertyAll(RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Dimensions.buttonBorderRadius),
          side: BorderSide(
              color: context.appColorScheme.dividerColor, width: 1)));

  @override
  WidgetStateProperty<EdgeInsetsGeometry?>? get padding =>
      const WidgetStatePropertyAll(EdgeInsets.symmetric(
          vertical: Dimensions.margin_16,
          horizontal: Dimensions.margin_32));

  @override
  WidgetStateProperty<Color?>? get foregroundColor =>
      WidgetStatePropertyAll(context.appColorScheme.primaryText);

  @override
  WidgetStateProperty<Color?>? get backgroundColor =>
      WidgetStatePropertyAll(context.appColorScheme.buttonColor);

  const AppMobileButtonStyle({
    required this.context,
  });
}

class AppTextButtonStyle extends ButtonStyle {
  final BuildContext context;

  @override
  WidgetStateProperty<Color?>? get foregroundColor =>
      WidgetStatePropertyAll(context.appColorScheme.secondaryText);

  const AppTextButtonStyle({
    required this.context,
  });
}

class AppAccentTextButtonStyle extends ButtonStyle {
  final BuildContext context;

  @override
  WidgetStateProperty<Color?>? get foregroundColor =>
      WidgetStatePropertyAll(context.appColorScheme.accentColor);

  const AppAccentTextButtonStyle({
    required this.context,
  });
}

class TabBarButtonStyle extends ButtonStyle {
  final BuildContext context;

  @override
  WidgetStateProperty<double?>? get elevation => const WidgetStatePropertyAll(0);
  @override
  WidgetStateProperty<Color?>? get backgroundColor =>
      WidgetStateProperty.resolveWith<Color>((Set<WidgetState> states) {
        if (states.contains(WidgetState.hovered)) return Colors.white10;
        return context.appColorScheme.headerColor;
      });

  @override
  WidgetStatePropertyAll<OutlinedBorder?>? get shape =>
      WidgetStatePropertyAll(RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Dimensions.buttonBorderRadius),
      ));

  @override
  WidgetStatePropertyAll<EdgeInsetsGeometry?>? get padding =>
      const WidgetStatePropertyAll(EdgeInsets.symmetric(horizontal: Dimensions.margin_8));

  const TabBarButtonStyle({
    required this.context,
  });
}
