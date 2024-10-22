import 'package:flutter/material.dart';
import 'package:portfolio_v2/domain/src/tag/tag_entity.dart';
import 'package:portfolio_v2/presentation/src/extensions/context_extensions.dart';
import 'package:portfolio_v2/presentation/src/theme/dimensions.dart';

import 'tag_widget.dart';

class ProjectTagsWidget extends StatelessWidget {
  final Iterable<TagEntity> tags;

  const ProjectTagsWidget({super.key, required this.tags});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double availableWidth = constraints.maxWidth  - Dimensions.margin_32;
        double usedWidth = 0;
        List<Widget> visibleTags = [];
        for (var tag in tags) {
          final tagWidget = TagWidget(tag: tag.name);
          final tagWidth = _measureWidgetWidth(context, tagWidget);
          if (usedWidth + tagWidth <= availableWidth) {
            visibleTags.add(tagWidget);
            usedWidth += tagWidth;
          } else {
            break; // Stop adding more tags when it exceeds available width
          }
        }

        return Row(
          mainAxisSize: MainAxisSize.min,
          children: visibleTags,
        );
      },
    );
  }

  double _measureWidgetWidth(BuildContext context, Widget widget) {
    final textPainter = TextPainter(
      text: TextSpan(
        text: (widget as TagWidget).tag,
        style: context.textTheme.titleSmall
            ?.copyWith(color: context.appColorScheme.linkColor),
      ),
      textDirection: TextDirection.ltr,
    )
      ..layout();
    return textPainter.width + Dimensions.margin_32;
  }
}
