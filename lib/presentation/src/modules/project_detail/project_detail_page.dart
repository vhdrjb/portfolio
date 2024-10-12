import 'package:flutter/material.dart';
import 'package:portfolio_v2/presentation/src/base/page/base_page.dart';
import 'package:portfolio_v2/presentation/src/modules/project_detail/bloc/project_detail_bloc.dart';

import 'component/project_detail_component.dart';

class ProjectDetailPage extends BasePage<ProjectDetailBloc> {
  const ProjectDetailPage({super.key});

  @override
  State<StatefulWidget> createState() => _ProjectDetailState();
}

class _ProjectDetailState extends PageState<ProjectDetailBloc> {

  @override
  void initState() {
    super.initState();
    bloc.add(GetProjectInfoEvent());
  }

  @override
  Widget buildScreen(BuildContext context) {
    return const Scaffold(
      body: ProjectDetailComponent(),
    );
  }

}