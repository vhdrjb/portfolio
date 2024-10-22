
import 'package:flutter/widgets.dart';

import '../base/page/device_type.dart';
import 'dimensions.dart';

abstract class ThemeConfig {
  static DeviceType? type = null;
  static int get displayProjectCount {
    if (type == DeviceType.desktop) {
      return 4;
    }else if (type ==DeviceType.tablet) {
      return 2;
    }else{
      return 1;
    }
  }

}