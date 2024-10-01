import 'package:flutter/material.dart';
import 'package:portfolio_v2/domain/src/project/project_entity.dart';
import 'package:portfolio_v2/presentation/src/extensions/context_extensions.dart';
import 'package:portfolio_v2/presentation/src/theme/button_style.dart';
import 'package:portfolio_v2/presentation/src/theme/dimensions.dart';
import 'package:portfolio_v2/presentation/src/widget/label/hoverable_text_widget.dart';
import 'package:portfolio_v2/presentation/src/widget/tag/project_tags_widget.dart';

import 'language_widget.dart';

class ProjectWidget extends StatelessWidget {
  final ProjectEntity project;

  const ProjectWidget({super.key, required this.project});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: Dimensions.margin_16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                HoverableTextWidget(
                  label: project.name,
                  onPress: () {

                  },
                  primaryColor: context.appColorScheme.linkColor,
                  style: context.textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w600,
                      color: context.appColorScheme.linkColor),
                ),
                Dimensions.marginVertical_16,
                Text(
                  project.about ?? '',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: context.textTheme.bodyMedium
                      ?.copyWith(color: context.appColorScheme.secondaryText),
                ),
                Dimensions.marginVertical_24,
                if (project.tags != null) ProjectTagsWidget(tags: project.tags!),
                Dimensions.marginVertical_16,
                LanguageWidget(
                  stack: project.stack,
                ),
                Dimensions.marginVertical_16,
              ],
            ),
          ),
          Dimensions.marginHorizontal_16,
          if (project.collaborateWith!=null)
          ElevatedButton(
              style: AppButtonStyle(context: context).copyWith(
                padding: const WidgetStatePropertyAll(EdgeInsets.symmetric(vertical: Dimensions.margin_8,horizontal: Dimensions.margin_16)),
                textStyle: WidgetStatePropertyAll(context.textTheme.bodySmall?.copyWith(
                  color: context.appColorScheme.primaryText
                ))
              ),
              onPressed: () {

          }, child: Text(project.collaborateWith!.name))
        ],
      ),
    );
  }
}
