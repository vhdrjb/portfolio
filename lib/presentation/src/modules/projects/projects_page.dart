import 'package:flutter/material.dart';
import 'bloc/projects_bloc.dart';
import '../../base/page/base_page.dart';
import 'component/project_component.dart';

class ProjectsPage extends BasePage<ProjectsBloc> {
  const ProjectsPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ProjectsState();
  }
}

class _ProjectsState extends PageState<ProjectsBloc> {

  @override
  void initState() {
    super.initState();
    bloc.add(FindAllProjectsEvent());
  }
  @override
  Widget buildScreen(BuildContext context) {
    return const ProjectComponent();
  }
}
