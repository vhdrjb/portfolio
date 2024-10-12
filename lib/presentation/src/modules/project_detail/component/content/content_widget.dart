import 'package:flutter/material.dart';
import 'package:portfolio_v2/domain/domain.dart';
import 'package:portfolio_v2/domain/src/base/text/styled_text.dart';
import 'package:portfolio_v2/infrastructure/router/provider/home_route_provider.dart';
import 'package:portfolio_v2/presentation/src/extensions/context_extensions.dart';
import 'package:portfolio_v2/presentation/src/widget/text/styled_text_widget.dart';

import '../../../../theme/dimensions.dart';
import '../../../../widget/project/language_widget.dart';

class ContentWidget extends StatelessWidget {
  final ProjectEntity project;
  const ContentWidget({super.key, required this.project});

  @override
  Widget build(BuildContext context) {
    if (project.content == null) {
      return Center(child: Text('No data found',style: context.textTheme.titleMedium?.copyWith(
        color: context.appColorScheme.secondaryText
      ),),);
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: Text(project.name,style: context.textTheme.titleLarge?.copyWith(
                color: context.appColorScheme.primaryText
              ),),
            ),
            if (project.stack != null)
              Flexible(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.only(top: Dimensions.margin_8),
                    child: LanguageWidget(
                      stack: project.stack!,
                    ),
                  ),
                ),
              ),
          ],
        ),
        Dimensions.marginVertical_16,
        Container(
          padding: const EdgeInsets.all(Dimensions.margin_16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Dimensions.projectBorders),
            border: Border.all(
              color: context.appColorScheme.dividerColor,
            )
          ),
          child: StyledTextWidget(texts: project.content!,style: context.textTheme.bodyMedium?.copyWith(
            color: context.appColorScheme.primaryText
          ),),
        ),
      ],
    );
  }
}
