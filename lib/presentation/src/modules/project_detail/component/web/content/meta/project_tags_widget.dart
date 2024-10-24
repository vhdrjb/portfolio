import 'package:flutter/material.dart';
import 'package:portfolio_v2/domain/src/tag/tag_entity.dart';
import 'package:portfolio_v2/presentation/src/extensions/context_extensions.dart';

import '../../../../../../theme/dimensions.dart';
import '../../../../../../widget/tag/tag_widget.dart';

class ProjectTagsWidget extends StatelessWidget {
  final Iterable<TagEntity> tags;

  const ProjectTagsWidget({super.key, required this.tags});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: Dimensions.margin_16),
          child: Wrap(
            spacing: Dimensions.margin_4,
            runSpacing: Dimensions.margin_8,
            children: [
              ...tags.map(
                (e) => TagWidget(tag: e.name),
              )
            ],
          ),
        ),
        Dimensions.marginVertical_8,
        Divider(color: context.appColorScheme.dividerColor,thickness: Dimensions.dividerHeight,)
      ],
    );
  }
}
