import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio_v2/presentation/src/extensions/context_extensions.dart';
import 'package:portfolio_v2/presentation/src/widget/error/app_error_widget.dart';
import 'package:portfolio_v2/presentation/src/widget/placeholder/custom_placeholder.dart';
import 'package:portfolio_v2/presentation/src/widget/project/project_widget.dart';
import 'package:portfolio_v2/presentation/src/widget/shimmer/shimmer_widget.dart';
import 'package:shimmer/shimmer.dart';
import 'package:widget_component_annotation/widget_component_annotation.dart';

import '../../../theme/dimensions.dart';
import '../bloc/projects_bloc.dart';

part 'project_component.g.dart';

@WidgetComponent(
    dataStateClass: AllProjectDataState,
    bloc: ProjectsBloc,
    baseState: ProjectsState,
    state: AllProjectState,
    errorStateClass: AllProjectErrorState,
    loadingStateClass: AllProjectLoadingState)
class ProjectComponent extends _$ProjectComponent {
  const ProjectComponent({super.key});

  @override
  Widget onDataWidget(context, AllProjectDataState state) {
    return ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        addRepaintBoundaries: false,
        addAutomaticKeepAlives: false,
        addSemanticIndexes: true,
        itemBuilder: (context, index) =>
            ProjectWidget(project: state.projects[index]),
        separatorBuilder: (context, index) => Divider(
              color: context.appColorScheme.dividerColor,
            ),
        itemCount: state.projects.length);
  }

  @override
  Widget onInitWidget(BuildContext context) {
    return ShimmerWidget(
      child:  ListView.separated(
        shrinkWrap: true,
        itemBuilder: (context, index) =>
            Padding(
              padding: const EdgeInsets.symmetric(vertical: Dimensions.margin_16),
              child: CustomPlaceholder.box(),
            ),
        separatorBuilder: (context, index) => Divider(
          color: context.appColorScheme.dividerColor,
        ),
        itemCount: 3)
    );
  }

  @override
  Widget onLoadingWidget(BuildContext context, AllProjectLoadingState state) {
    return onInitWidget(context);
  }

  @override
  Widget onErrorWidget(BuildContext context, AllProjectErrorState state) {
    return AppErrorWidget(
      onPress: () {
        context.read<ProjectsBloc>().add(FindAllProjectsEvent());
      },
    );
  }
}
