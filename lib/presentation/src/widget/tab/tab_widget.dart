import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio_v2/presentation/src/extensions/context_extensions.dart';

import '../../theme/dimensions.dart';

class TabWidget extends StatelessWidget {
  final String label;
  final String iconPath;
  const TabWidget({super.key,required this.label,required this.iconPath});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 180,
      child: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(
              iconPath,
              height: 12,
              width: 12,
              fit: BoxFit.contain,
              colorFilter: ColorFilter.mode(
                  context.appColorScheme.iconColor,
                  BlendMode.srcIn),
            ),
            Dimensions.marginHorizontal_8,
            FittedBox(
              fit:BoxFit.scaleDown ,
              alignment: Alignment.centerLeft,
              child: Text(
                label,
                textAlign: TextAlign.left,
                style: context.textTheme.titleMedium?.copyWith(
                    color: context.appColorScheme.primaryText),
              ),
            )
          ],
        ),
      ),
    );
  }
}
