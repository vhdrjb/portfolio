import 'package:flutter/material.dart';
import 'package:portfolio_v2/presentation/src/extensions/context_extensions.dart';
import 'package:portfolio_v2/presentation/src/theme/dimensions.dart';

class TagWidget extends StatelessWidget {
  final String tag;

  const TagWidget({super.key, required this.tag});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Dimensions.margin_4),
      child: Chip(
        label: Text(
          tag,
          style: context.textTheme.labelSmall
              ?.copyWith(color: context.appColorScheme.linkColor,fontWeight: FontWeight.bold),
        ),
        color: WidgetStatePropertyAll(
            context.appColorScheme.linkColor.withOpacity(0.2)),
        side: BorderSide.none,
        shape: RoundedRectangleBorder(
          side: BorderSide.none,
          borderRadius: BorderRadius.circular(Dimensions.tagsBorderRadius),
        ),

      ),
    );
  }
}
