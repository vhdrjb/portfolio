import 'package:flutter/material.dart';
import 'package:portfolio_v2/domain/src/base/text/styled_text.dart';
import 'package:portfolio_v2/domain/src/tag/tag_entity.dart';
import 'package:portfolio_v2/presentation/src/extensions/context_extensions.dart';
import 'package:portfolio_v2/presentation/src/widget/tag/tag_widget.dart';

import '../../../../../../theme/dimensions.dart';
import '../../../../../../widget/text/styled_text_widget.dart';
import 'project_cover_widget.dart';

class AboutMetaDataWidget extends StatelessWidget {
  final String about;

  const AboutMetaDataWidget({super.key, required this.about});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Dimensions.marginVertical_16,
        Text(
          'About',
          style: context.textTheme.titleMedium?.copyWith(
              color: context.appColorScheme.primaryText,
              fontWeight: FontWeight.w600),
        ),
        Padding(
          padding: const EdgeInsets.only(top: Dimensions.margin_8),
          child: Text(
            about!,
            style: context.textTheme.titleMedium
                ?.copyWith(color: context.appColorScheme.primaryText),
          ),
        ),
        Dimensions.marginVertical_16,
        Divider(
          thickness: Dimensions.dividerHeight,
          color: context.appColorScheme.dividerColor,
        )
      ],
    );
  }
}
