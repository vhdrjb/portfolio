import 'package:flutter/material.dart';
import 'package:portfolio_v2/data/stub_datasource.dart';
import 'package:portfolio_v2/presentation/src/widget/career/career_overview_widget.dart';

import '../../../theme/dimensions.dart';

class LastCareersComponent extends StatelessWidget {
  const LastCareersComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
    physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: careers.take(3).length,
      itemBuilder: (_, index) => CareerOverviewWidget(career: careers[index]),
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          mainAxisExtent: Dimensions.careerHeight,
          mainAxisSpacing: Dimensions.margin_16,
          crossAxisSpacing: Dimensions.margin_16,
          maxCrossAxisExtent: Dimensions.maxCareerWidth),
    );
  }
}
