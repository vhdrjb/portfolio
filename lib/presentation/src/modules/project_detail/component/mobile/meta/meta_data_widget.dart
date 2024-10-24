import 'package:flutter/material.dart';
import 'package:portfolio_v2/domain/domain.dart';

import '../../../../../theme/dimensions.dart';
import '../../web/content/meta/about_meta_data_widget.dart';
import '../../web/content/meta/meta_company_widget.dart';
import '../../web/content/meta/project_cover_widget.dart';

class MetaDataMobileWidget extends StatelessWidget {
  final ProjectEntity project;

  const MetaDataMobileWidget({super.key, required this.project});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (project.cover != null)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: Dimensions.margin_16),
            child: ProjectCoverWidget(
              projectCover: project.cover!,
            ),
          ),
        if (project.about != null)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: Dimensions.margin_16),
            child: AboutMetaDataWidget(
              about: project.about!,
            ),
          ),
      ],
    );
  }
}
