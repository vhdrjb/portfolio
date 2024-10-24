import 'package:flutter/material.dart';
import 'package:portfolio_v2/domain/domain.dart';
import 'package:portfolio_v2/domain/src/base/text/styled_text.dart';
import 'package:portfolio_v2/infrastructure/router/provider/home_route_provider.dart';
import 'package:portfolio_v2/presentation/src/extensions/context_extensions.dart';
import 'package:portfolio_v2/presentation/src/modules/project_detail/component/web/content/meta/project_tags_widget.dart';
import 'package:portfolio_v2/presentation/src/widget/text/styled_text_widget.dart';

import '../../../../../theme/dimensions.dart';
import '../../../../../widget/project/language_widget.dart';
import '../../web/content/meta/meta_company_widget.dart';
import '../../web/content/meta/meta_data_widget.dart';
import '../meta/meta_data_widget.dart';

class ContentMobileWidget extends StatelessWidget {
  final ProjectEntity project;
  const ContentMobileWidget({super.key, required this.project});

  @override
  Widget build(BuildContext context) {
    if (project.content == null) {
      return Center(child: Text('No data found',style: context.textTheme.titleMedium?.copyWith(
          color: context.appColorScheme.secondaryText
      ),),);
    }
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          MetaDataMobileWidget(
            project: project,
          ),
          Row(
            children: [
              Dimensions.marginHorizontal_16,
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
              Dimensions.marginHorizontal_16,
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: Dimensions.margin_16),
            child: Container(
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
          ),
          if (project.tags != null)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: Dimensions.margin_16),
              child: ProjectTagsWidget(
                tags: project.tags!,
              ),
            ),
          Dimensions.marginVertical_16,
          if (project.collaborateWith != null)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: Dimensions.margin_16),
              child: MetaCompanyWidget(
                company: project.collaborateWith!,
              ),
            ),
          Dimensions.marginVertical_32,
        ],
      ),
    );
  }
}
