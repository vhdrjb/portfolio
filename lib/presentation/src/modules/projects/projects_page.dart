import 'package:flutter/material.dart';
import 'package:portfolio_v2/data/stub_datasource.dart';
import 'package:portfolio_v2/presentation/src/extensions/context_extensions.dart';
import 'package:portfolio_v2/presentation/src/widget/project/project_widget.dart';
import 'bloc/projects_bloc.dart';
import '../../base/page/base_page.dart';

class ProjectsPage extends BasePage<ProjectsBloc> {
  const ProjectsPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ProjectsState();
  }
}

class _ProjectsState extends PageState<ProjectsBloc> {
  @override
  Widget buildScreen(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        itemBuilder: (context, index) => ProjectWidget(project: projects[index]),
        separatorBuilder: (context, index) => Divider(color: context.appColorScheme.dividerColor,),
        itemCount: projects.length);
  }
}
