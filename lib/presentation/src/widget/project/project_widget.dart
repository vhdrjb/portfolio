import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio_v2/domain/src/project/project_entity.dart';
import 'package:portfolio_v2/presentation/src/extensions/context_extensions.dart';
import 'package:portfolio_v2/presentation/src/modules/projects/bloc/projects_bloc.dart';
import 'package:portfolio_v2/presentation/src/theme/button_style.dart';
import 'package:portfolio_v2/presentation/src/theme/dimensions.dart';
import 'package:portfolio_v2/presentation/src/widget/tag/project_tags_widget.dart';
import 'package:portfolio_v2/presentation/src/widget/text/styled_text_widget.dart';

import '../../modules/home/bloc/home_bloc.dart';
import '../text/hoverable_text_widget.dart';
import 'language_widget.dart';

class ProjectWidget extends StatelessWidget {
  final ProjectEntity project;

  const ProjectWidget({super.key, required this.project});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: Dimensions.margin_8),
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
                    context
                        .read<HomeBloc>()
                        .add(OpenProjectByIdEvent(id: project.id));
                  },
                  primaryColor: context.appColorScheme.linkColor,
                  style: context.textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w600,
                      color: context.appColorScheme.linkColor),
                ),
                if (project.about != null)
                  Padding(
                    padding: const EdgeInsets.only(top: Dimensions.margin_16),
                    child: Text(
                      project.about!,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: context.textTheme.bodyMedium?.copyWith(
                          color: context.appColorScheme.secondaryText),
                    ),
                  ),
                if (project.tags != null)
                  Padding(
                    padding: const EdgeInsets.only(top: Dimensions.margin_24),
                    child: ProjectTagsWidget(tags: project.tags!),
                  ),
                if (project.stack != null)
                  Padding(
                    padding: const EdgeInsets.only(top: Dimensions.margin_8),
                    child: LanguageWidget(
                      stack: project.stack!,
                    ),
                  ),
              ],
            ),
          ),
          if (project.collaborateWith != null)
            Padding(
              padding: const EdgeInsets.only(left: Dimensions.margin_24),
              child: ElevatedButton(
                  style: AppButtonStyle(context: context).copyWith(
                      padding: const WidgetStatePropertyAll(
                          EdgeInsets.symmetric(
                              vertical: Dimensions.margin_8,
                              horizontal: Dimensions.margin_16)),
                      textStyle: WidgetStatePropertyAll(
                          context.textTheme.bodySmall?.copyWith(
                              color: context.appColorScheme.primaryText))),
                  onPressed: () {},
                  child: Text(project.collaborateWith!.name)),
            )
        ],
      ),
    );
  }
}
