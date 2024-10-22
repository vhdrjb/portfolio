import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio_v2/presentation/src/theme/dimensions.dart';
import 'package:portfolio_v2/presentation/src/widget/error/app_error_widget.dart';
import 'package:portfolio_v2/presentation/src/widget/placeholder/custom_placeholder.dart';
import 'package:portfolio_v2/presentation/src/widget/project/project_overview_widget.dart';
import 'package:portfolio_v2/presentation/src/widget/shimmer/shimmer_widget.dart';
import 'package:widget_component_annotation/widget_component_annotation.dart';
import '../../bloc/overview_bloc.dart';

part 'favorite_projects_component.g.dart';

@WidgetComponent(
    dataStateClass: OverviewFavoriteProjectDataState,
    bloc: OverviewBloc,
    baseState: OverviewState,
    state: OverviewFavoriteProjectsState,
    errorStateClass: OverviewFavoriteProjectErrorState,
    loadingStateClass: OverviewFavoriteProjectLoadingState)
class FavoriteProjectsComponent extends _$FavoriteProjectsComponent {
  const FavoriteProjectsComponent({super.key});

  @override
  Widget onDataWidget(
      BuildContext context, OverviewFavoriteProjectDataState state) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: state.projects.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1,
        crossAxisSpacing: Dimensions.margin_16,
        mainAxisExtent: Dimensions.projectsHeight,
        mainAxisSpacing: Dimensions.margin_16,
      ),
      itemBuilder: (_, int index) =>
          ProjectOverviewWidget(project: state.projects[index]),
    );
  }

  @override
  Widget onInitWidget(BuildContext context) {
    return ShimmerWidget(
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 2,
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            mainAxisExtent: Dimensions.projectsHeight,
            childAspectRatio: 1,
            mainAxisSpacing: Dimensions.margin_16,
            crossAxisSpacing: Dimensions.margin_16,
            maxCrossAxisExtent: Dimensions.maxProjectPlaceholderWidth),
        itemBuilder: (_, int index) => CustomPlaceholder.box(),
      ),
    );
  }

  @override
  Widget onLoadingWidget(
      BuildContext context, OverviewFavoriteProjectLoadingState state) {
    return onInitWidget(context);
  }

  @override
  Widget onErrorWidget(
      BuildContext context, OverviewFavoriteProjectErrorState state) {
    return AppErrorWidget(
      onPress: () {},
    );
  }
}
