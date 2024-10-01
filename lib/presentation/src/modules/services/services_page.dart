import 'package:flutter/material.dart';
import 'package:portfolio_v2/presentation/src/base/page/base_page.dart';
import 'package:portfolio_v2/presentation/src/modules/services/bloc/services_bloc.dart';

import '../../../../data/stub_datasource.dart';
import '../../theme/dimensions.dart';
import '../../widget/services/service_widget.dart';

class ServicesPage extends BasePage<ServicesBloc> {
  @override
  State<StatefulWidget> createState() {
    return _ServicesState();
  }
}

class _ServicesState extends PageState<ServicesBloc> {
  @override
  Widget buildScreen(BuildContext context) {
    return GridView.builder(
      itemCount: services.length,
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          mainAxisExtent: Dimensions.minServiceWidth,
          childAspectRatio: 1,
          mainAxisSpacing: Dimensions.margin_16,
          crossAxisSpacing: Dimensions.margin_16,
          maxCrossAxisExtent: Dimensions.maxServiceWidth),
      itemBuilder: (context, index) => ServiceWidget(service: services[index]),
    );
  }

}