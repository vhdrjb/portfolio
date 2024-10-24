import 'package:flutter/material.dart';
import 'package:portfolio_v2/presentation/src/modules/overview/components/mobile/last_careers_mobile_component.dart';
import 'package:portfolio_v2/presentation/src/modules/overview/components/mobile/services_mobile_components.dart';

import '../../../theme/dimensions.dart';
import 'mobile/favorite_projects_mobile_component.dart';
import 'mobile/profile/mobile_profile_component.dart';

class OverviewPageMobile extends StatelessWidget {
  const OverviewPageMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      physics: ClampingScrollPhysics(),
      child: Column(
        children: [
          MobileProfileComponent(),
          FavoriteProjectsMobileComponent(),
          ServicesMobileComponents(),
          LastCareersMobileComponent(),
          SizedBox(height: Dimensions.margin_32,)

        ],
      ),
    );
  }
}
