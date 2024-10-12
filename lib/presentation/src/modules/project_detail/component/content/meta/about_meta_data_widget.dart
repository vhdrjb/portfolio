import 'package:flutter/material.dart';
import 'package:portfolio_v2/domain/src/base/text/styled_text.dart';
import 'package:portfolio_v2/domain/src/tag/tag_entity.dart';
import 'package:portfolio_v2/presentation/src/extensions/context_extensions.dart';
import 'package:portfolio_v2/presentation/src/widget/tag/tag_widget.dart';

import '../../../../../theme/dimensions.dart';
import '../../../../../widget/text/styled_text_widget.dart';
import 'project_cover_widget.dart';

class AboutMetaDataWidget extends StatelessWidget {
  final String? about;
  final Iterable<TagEntity>? tags;

  const AboutMetaDataWidget(
      {super.key, required this.about, required this.tags});

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
        if (about != null)
          Padding(
            padding: const EdgeInsets.only(top: Dimensions.margin_8),
            child: Text(
              about!,
              style: context.textTheme.titleMedium
                  ?.copyWith(color: context.appColorScheme.primaryText),
            ),
          ),
        if (tags != null)
          Padding(
            padding: const EdgeInsets.only(top: Dimensions.margin_16),
            child: Wrap(
              spacing: Dimensions.margin_4,
              runSpacing: Dimensions.margin_8,
              children: [
                ...tags!.map(
                  (e) => TagWidget(tag: e.name),
                )
              ],
            ),
          ),
        Dimensions.marginVertical_16,
        Divider(thickness: Dimensions.dividerHeight,color: context.appColorScheme.dividerColor,)
      ],
    );
  }
}
