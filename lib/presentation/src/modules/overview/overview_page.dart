import 'package:flutter/material.dart';
import 'package:portfolio_v2/presentation/presentation.dart';
import 'package:portfolio_v2/presentation/src/base/page/base_page.dart';
import 'package:portfolio_v2/presentation/src/modules/overview/bloc/overview_bloc.dart';
import 'package:portfolio_v2/presentation/src/modules/overview/components/overview_page_web.dart';
import 'package:provider/provider.dart';

import '../../base/page/device_type.dart';
import '../../base/page/responsive_notifier.dart';
import 'components/overview_page_mobile.dart';

class OverviewPage extends BasePage<OverviewBloc> {
  const OverviewPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _OverviewState();
  }
}

class _OverviewState extends PageState<OverviewBloc> {
  @override
  void initState() {
    super.initState();
    _getData();
  }

  void _getData() {
    bloc.add(FindFavoriteProjectsEvent());
    bloc.add(FindOverviewServiceEvent());
    bloc.add(FindLastCareerEvent());
  }

  @override
  Widget buildScreen(BuildContext context) {
    return ResponsivePageComponent(
      desktop: (Size size) {
        return const OverviewPageWeb();
      },
      mobile: (Size size) {
        return const OverviewPageMobile();
      },
    );
  }
}
