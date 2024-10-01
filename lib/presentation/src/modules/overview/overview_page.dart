import 'package:flutter/material.dart';
import 'package:portfolio_v2/data/stub_datasource.dart';
import 'package:portfolio_v2/presentation/src/base/page/base_page.dart';
import 'package:portfolio_v2/presentation/src/extensions/context_extensions.dart';
import 'package:portfolio_v2/presentation/src/modules/overview/bloc/overview_bloc.dart';
import 'package:portfolio_v2/presentation/src/modules/overview/components/last_careers_component.dart';
import 'package:portfolio_v2/presentation/src/theme/dimensions.dart';
import 'package:portfolio_v2/presentation/src/widget/project/project_overview_widget.dart';

import 'components/favorite_projects_component.dart';
import 'components/services_components.dart';

class OverviewPage extends BasePage<OverviewBloc> {
  const OverviewPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _OverviewState();
  }
}

class _OverviewState extends PageState<OverviewBloc> {
  @override
  Widget buildScreen(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: Dimensions.margin_8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Favorite Projects',
              style: context.textTheme.titleMedium
                  ?.copyWith(color: context.appColorScheme.primaryText),
            ),
            Dimensions.marginVertical_8,
            const FavoriteProjectsComponent(),
            Dimensions.marginVertical_24,
            Text(
              'Services',
              style: context.textTheme.titleMedium
                  ?.copyWith(color: context.appColorScheme.primaryText),
            ),
            Dimensions.marginVertical_8,
            const ServicesComponents(),
            Dimensions.marginVertical_24,
            Text(
              'Companies in Career History',
              style: context.textTheme.titleMedium
                  ?.copyWith(color: context.appColorScheme.primaryText),
            ),
            Dimensions.marginVertical_8,
          const LastCareersComponent()
          ],
        ),
      ),
    );
  }
}
