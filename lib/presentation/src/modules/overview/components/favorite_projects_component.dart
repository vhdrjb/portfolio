import 'package:flutter/material.dart';
import 'package:portfolio_v2/data/stub_datasource.dart';
import 'package:portfolio_v2/presentation/src/theme/dimensions.dart';
import 'package:portfolio_v2/presentation/src/widget/project/project_overview_widget.dart';

class FavoriteProjectsComponent extends StatelessWidget {
  const FavoriteProjectsComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: projects.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1,
        crossAxisSpacing: Dimensions.margin_16,
        mainAxisExtent: Dimensions.projectsHeight,
        mainAxisSpacing: Dimensions.margin_16,
      ), itemBuilder: (_, int index) => ProjectOverviewWidget(project: projects[index]),
    );
  }
}
