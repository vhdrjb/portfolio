import 'package:flutter/material.dart';
import 'package:portfolio_v2/domain/domain.dart';
import 'package:portfolio_v2/infrastructure/router/provider/home_route_provider.dart';
import 'package:portfolio_v2/presentation/src/extensions/context_extensions.dart';
import 'package:portfolio_v2/presentation/src/extensions/string_extensions.dart';
import 'package:portfolio_v2/presentation/src/modules/project_detail/component/web/content/meta/project_tags_widget.dart';
import 'package:portfolio_v2/presentation/src/widget/text/styled_text_widget.dart';

import '../../../../../../theme/dimensions.dart';
import '../../../../../../widget/project/language_widget.dart';
import 'about_meta_data_widget.dart';
import 'meta_company_widget.dart';
import 'project_cover_widget.dart';

class MetaDataWidget extends StatelessWidget {
  final ProjectEntity project;

  const MetaDataWidget({super.key, required this.project});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Dimensions.profileWebWidth,
      child: Column(
        children: [
          const SizedBox(
            height: Dimensions.margin_16,
          ),
          if (project.cover != null)
            ProjectCoverWidget(
              projectCover: project.cover!,
            ),
          if (project.about != null)
            AboutMetaDataWidget(
              about: project.about!,
            ),
          if (project.collaborateWith != null)
            MetaCompanyWidget(
              company: project.collaborateWith!,
            ),
        ],
      ),
    );
  }
}
