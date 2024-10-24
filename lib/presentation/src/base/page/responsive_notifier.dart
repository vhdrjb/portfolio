import 'package:flutter/widgets.dart';
import 'package:portfolio_v2/presentation/src/base/page/device_type.dart';

import '../../config/resolution_config.dart';

class ResponsiveNotifier with ChangeNotifier {
  DeviceType _deviceType = DeviceType.desktop;
  late Size _size;

  ResponsiveNotifier(BuildContext context) {
    init(context);
  }

  void updateScreenType(Size constrains) {
    _size = constrains;
    if (constrains.width <= ResolutionConfig.maxMobileWidth) {
      if (_deviceType != DeviceType.mobile) {
        _update(DeviceType.mobile);
        debugPrint('switch to mobile');
      }
    }

    if (constrains.width >= ResolutionConfig.minTabletWidth &&
        constrains.width <= ResolutionConfig.maxTableWidth) {
      if (_deviceType != DeviceType.tablet) {
        _update(DeviceType.tablet);
        debugPrint('switch to tablet');
      }
    }

    if (constrains.width >= ResolutionConfig.maxTableWidth) {
      if (_deviceType != DeviceType.desktop) {
        _update(DeviceType.desktop);
        debugPrint('switch to desktop');
      }
    }
  }

  void _update(DeviceType type) {
    _deviceType = type;
    notifyListeners();
    return;
  }

  void init(BuildContext context) {
    _size = MediaQuery.of(context).size;
    updateScreenType(_size);
  }

  DeviceType get deviceType => _deviceType;

  Size get deviceSize => _size;
}
