import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_v2/presentation/src/extensions/context_extensions.dart';
import 'package:portfolio_v2/presentation/src/extensions/list_extensions.dart';
import 'package:portfolio_v2/presentation/src/extensions/string_extensions.dart';

import '../../../theme/dimensions.dart';

class HighlightComponent extends StatelessWidget {
  const HighlightComponent({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> highlights = [
      'Problem Solving',
      'Leadership',
      'Communication',
      'Code Review'
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Dimensions.marginVertical_16,
        Divider(
          color: context.appColorScheme.dividerColor,
        ),
        Text(
          'Professional Highlights',
          style: context.textTheme.titleMedium
              ?.copyWith(color: context.appColorScheme.primaryText),
        ),
        Dimensions.marginVertical_8,

        Wrap(
          children: [
            ...['problem_solving', 'leadership', 'communication', 'code_review']
                .mapIndex(
              (e,i) => Padding(
                padding: const EdgeInsets.all(Dimensions.margin_4),
                child: Tooltip(
                  textStyle: context.textTheme.bodySmall?.copyWith(
                    color: context.appColorScheme.primaryText
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.projectBorders),
                    color: context.appColorScheme.surface
                  ),
                  margin: const EdgeInsets.only(top: Dimensions.margin_8),
                  message: highlights[i],
                    child: CachedNetworkImage(
                  imageUrl: e.toPngImageUrl,
                  height: Dimensions.highlightSize,
                  width: Dimensions.highlightSize,
                )),
              ),
            )
          ],
        )
      ],
    );
  }
}
