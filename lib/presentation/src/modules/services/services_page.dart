import 'package:flutter/material.dart';
import 'package:portfolio_v2/presentation/src/base/page/base_page.dart';
import 'package:portfolio_v2/presentation/src/modules/services/bloc/services_bloc.dart';

import 'component/services_component.dart';

class ServicesPage extends BasePage<ServicesBloc> {
  const ServicesPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ServicesState();
  }
}

class _ServicesState extends PageState<ServicesBloc> {

  @override
  void initState() {
    super.initState();
    bloc.add(FindAllServicesEvent());
  }
  @override
  Widget buildScreen(BuildContext context) {
    return const ServicesComponent();
  }

}