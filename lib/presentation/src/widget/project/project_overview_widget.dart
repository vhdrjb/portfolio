import 'package:flutter/material.dart';
import 'package:portfolio_v2/domain/src/project/project_entity.dart';
import 'package:portfolio_v2/presentation/src/extensions/context_extensions.dart';
import 'package:portfolio_v2/presentation/src/theme/dimensions.dart';

import 'language_widget.dart';

class ProjectOverviewWidget extends StatelessWidget {
  final ProjectEntity project;

  const ProjectOverviewWidget({super.key, required this.project});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(Dimensions.margin_16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Dimensions.projectBorders),
          border: Border.all(color: context.appColorScheme.borderColor)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  project.name,
                  maxLines: 1,
                  style: context.textTheme.titleMedium
                      ?.copyWith(color: context.appColorScheme.linkColor),
                ),
              ),
              if (project.collaborateWith != null)
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Container(
                    padding: const EdgeInsets.all(Dimensions.margin_4),
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: context.appColorScheme.borderColor),
                        borderRadius:
                            BorderRadius.circular(Dimensions.projectBorders)),
                    child: Text(
                      project.collaborateWith?.name ?? '',
                      style: context.textTheme.bodySmall?.copyWith(
                          color: context.appColorScheme.secondaryText),
                    ),
                  ),
                )
            ],
          ),
          Dimensions.marginVertical_16,
          Text(
            project.description ?? '',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: context.textTheme.bodyMedium
                ?.copyWith(color: context.appColorScheme.secondaryText),
          ),
          Dimensions.marginVertical_16,
          LanguageWidget(
            stack: project.stacks.first,
          )
        ],
      ),
    );
  }
}
