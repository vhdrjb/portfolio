import 'package:flutter/material.dart';
import 'package:portfolio_v2/presentation/src/base/page/base_page.dart';
import 'package:portfolio_v2/presentation/src/modules/project_detail/bloc/project_detail_bloc.dart';

class ProjectDetailMobile extends BasePage<ProjectDetailBloc> {
  const ProjectDetailMobile({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ProjectState();
  }
}

class _ProjectState extends PageState<ProjectDetailBloc> {
  @override
  Widget buildScreen(BuildContext context) {
    return const Placeholder();
  }
}