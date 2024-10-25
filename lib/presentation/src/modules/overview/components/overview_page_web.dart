import 'package:flutter/material.dart';
import 'package:portfolio_v2/presentation/src/extensions/context_extensions.dart';

import '../../../theme/dimensions.dart';
import '../../../widget/terms/copyright_widget.dart';
import 'web/favorite_projects_component.dart';
import 'web/last_careers_component.dart';
import 'web/services_components.dart';

class OverviewPageWeb extends StatelessWidget {
  const OverviewPageWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: Dimensions.margin_8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Favorite Projects',
              style: context.textTheme.titleMedium
                  ?.copyWith(color: context.appColorScheme.primaryText,fontWeight: FontWeight.w600),
            ),
            Dimensions.marginVertical_8,
            const FavoriteProjectsComponent(),
            Dimensions.marginVertical_24,
            Text(
              'Services',
              style: context.textTheme.titleMedium
                  ?.copyWith(color: context.appColorScheme.primaryText,fontWeight: FontWeight.w600),
            ),
            Dimensions.marginVertical_8,
            const ServicesComponents(),
            Dimensions.marginVertical_24,
            Text(
              'Companies in Career History',
              style: context.textTheme.titleMedium
                  ?.copyWith(color: context.appColorScheme.primaryText,fontWeight: FontWeight.w600),
            ),
            Dimensions.marginVertical_8,
            const LastCareersComponent(),
            const SizedBox(
              height: Dimensions.margin_24,
            ),
          ],
        ),
      ),
    );
  }
}
