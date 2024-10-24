import 'package:flutter/widgets.dart';

import 'dimensions.dart';

abstract class ScreenStyle {
  static EdgeInsets get labelPadding => const EdgeInsets.only(
      top: Dimensions.margin_24,
      left: Dimensions.margin_16,
      right: Dimensions.margin_16);
}
