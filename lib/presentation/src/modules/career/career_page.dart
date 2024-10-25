import 'package:flutter/material.dart';
import 'package:portfolio_v2/presentation/src/base/page/base_page.dart';
import 'package:portfolio_v2/presentation/src/modules/career/bloc/career_bloc.dart';
import 'package:portfolio_v2/presentation/src/modules/career/component/career_component.dart';

class CareerPage extends BasePage<CareerBloc> {
  const CareerPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _CareerState();
  }
}

class _CareerState extends PageState<CareerBloc> {

  @override
  void initState() {
    super.initState();
    bloc.add(FindAllCareerEvent());
  }

  @override
  Widget buildScreen(BuildContext context) {
   return const SingleChildScrollView(physics: ClampingScrollPhysics(),child: CareerComponent(),);
  }
}
