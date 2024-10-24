import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio_v2/presentation/src/extensions/context_extensions.dart';
import 'package:portfolio_v2/presentation/src/theme/button_style.dart';

import '../../theme/dimensions.dart';

class TabWidget extends StatelessWidget {
  final String label;
  final String iconPath;
  final bool selected;
  final VoidCallback? onPress;
  const TabWidget({super.key,required this.label,required this.iconPath,required this.selected,this.onPress});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Dimensions.tabIndicatorWidth,
      child: Center(
        child: ElevatedButton.icon(
          onPressed: onPress,
          style: TabBarButtonStyle(context: context),
            icon:SvgPicture.asset(
              iconPath,
              height: Dimensions.tabIconSize,
              width: Dimensions.tabIconSize,
              fit: BoxFit.contain,
              colorFilter: ColorFilter.mode(
                  context.appColorScheme.iconColor,
                  BlendMode.srcIn),
            ),
           label : Text(
              label,
              textAlign: TextAlign.left,
              style: context.textTheme.titleMedium?.copyWith(
                  color: context.appColorScheme.primaryText),
            )
        ),
      ),
    );
  }
}
