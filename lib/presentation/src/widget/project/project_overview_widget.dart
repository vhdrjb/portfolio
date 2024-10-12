import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio_v2/domain/src/project/project_entity.dart';
import 'package:portfolio_v2/presentation/src/extensions/context_extensions.dart';
import 'package:portfolio_v2/presentation/src/theme/dimensions.dart';
import 'package:portfolio_v2/presentation/src/widget/text/hoverable_text_widget.dart';

import '../../modules/home/bloc/home_bloc.dart';
import '../text/styled_text_widget.dart';
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
                child: HoverableTextWidget(
                  onPress: () {
                    context.read<HomeBloc>().add(OpenProjectByIdEvent(id: project.id));
                  },
                  label:
                    project.name,
                    primaryColor: context.appColorScheme.linkColor,
                    style: context.textTheme.titleMedium,
                ),
              ),
              if (project.collaborateWith != null)
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Padding(
                    padding: const EdgeInsets.only(left: Dimensions.margin_4),
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
                  ),
                )
            ],
          ),
          if (project.about!=null)
          Padding(
            padding: const EdgeInsets.only(top: Dimensions.margin_16),
            child: Text(
             project.about!,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: context.textTheme.bodyMedium
                  ?.copyWith(color: context.appColorScheme.secondaryText),
            ),
          ),
          if (project.stack!=null)
            Padding(
              padding: const EdgeInsets.only(top: Dimensions.margin_8),
              child: LanguageWidget(
                stack: project.stack!,
              ),
            ),
        ],
      ),
    );
  }
}
