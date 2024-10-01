import 'package:flutter/material.dart';
import 'package:portfolio_v2/presentation/src/base/page/base_page.dart';
import 'package:portfolio_v2/presentation/src/modules/services/bloc/services_bloc.dart';

class ServicesPage extends BasePage<ServicesBloc> {
  @override
  State<StatefulWidget> createState() {
    return _ServicesState();
  }
}

class _ServicesState extends PageState<ServicesBloc> {
  @override
  Widget buildScreen(BuildContext context) {
    return Placeholder(color: Colors.redAccent,);
  }

}