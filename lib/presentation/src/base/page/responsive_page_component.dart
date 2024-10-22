import 'package:flutter/material.dart';
import 'package:portfolio_v2/presentation/src/base/page/responsive_notifier.dart';
import 'package:provider/provider.dart';
import 'device_type.dart';

typedef PageBuilder = Widget Function(Size size);

class ResponsivePageComponent extends StatefulWidget {
  final PageBuilder mobile;
  final PageBuilder? tablet;
  final PageBuilder desktop;

  const ResponsivePageComponent(
      {super.key, required this.desktop, required this.mobile, this.tablet});

  @override
  State<ResponsivePageComponent> createState() =>
      _ResponsivePageComponentState();
}

class _ResponsivePageComponentState extends State<ResponsivePageComponent> {
  @override
  Widget build(BuildContext context) {
    final ResponsiveNotifier notifier =
        Provider.of<ResponsiveNotifier>(context);
    return ListenableBuilder(
      listenable: notifier,
      builder: (context, _) {
        switch (notifier.deviceType) {
          case DeviceType.mobile:
            return widget.mobile(
                Size(notifier.deviceSize.width, notifier.deviceSize.height));
          case DeviceType.tablet:
            if (widget.tablet != null) {
              return widget.tablet!(
                  Size(notifier.deviceSize.width, notifier.deviceSize.height));
            } else {
              return widget.desktop(
                  Size(notifier.deviceSize.width, notifier.deviceSize.height));
            }
          case DeviceType.desktop:
            return widget.desktop(
                Size(notifier.deviceSize.width, notifier.deviceSize.height));
        }
      },
    );
  }
}
