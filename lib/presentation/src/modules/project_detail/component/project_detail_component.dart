import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio_v2/presentation/src/modules/project_detail/component/project_detail_widget.dart';
import 'package:widget_component_annotation/widget_component_annotation.dart';
import 'package:flutter/material.dart';
import '../bloc/project_detail_bloc.dart';

part 'project_detail_component.g.dart';

@WidgetComponent(
    dataStateClass: ProjectDetailDataState,
    bloc: ProjectDetailBloc,
    baseState: ProjectDetailState,
    state: ProjectDetails,
    loadingStateClass: ProjectDetailLoadingState,
    errorStateClass: ProjectDetailErrorState)
class ProjectDetailComponent extends _$ProjectDetailComponent {
  const ProjectDetailComponent({super.key});

  @override
  Widget onDataWidget(BuildContext context, ProjectDetailDataState state) {
    return ProjectDetailWidget(project: state.project);
  }

  @override
  Widget onInitWidget(BuildContext context) {
    return const Center(child: CircularProgressIndicator());
  }
}
