import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio_v2/presentation/src/extensions/context_extensions.dart';
import 'package:portfolio_v2/presentation/src/theme/dimensions.dart';
import 'package:portfolio_v2/presentation/src/widget/error/app_error_widget.dart';
import 'package:portfolio_v2/presentation/src/widget/placeholder/custom_placeholder.dart';
import 'package:portfolio_v2/presentation/src/widget/project/project_overview_widget.dart';
import 'package:portfolio_v2/presentation/src/widget/shimmer/shimmer_widget.dart';
import 'package:widget_component_annotation/widget_component_annotation.dart';
import '../../../../theme/screen_style.dart';
import '../../bloc/overview_bloc.dart';

part 'favorite_projects_mobile_component.g.dart';

@WidgetComponent(
    dataStateClass: OverviewFavoriteProjectDataState,
    bloc: OverviewBloc,
    baseState: OverviewState,
    state: OverviewFavoriteProjectsState,
    errorStateClass: OverviewFavoriteProjectErrorState,
    loadingStateClass: OverviewFavoriteProjectLoadingState)
class FavoriteProjectsMobileComponent
    extends _$FavoriteProjectsMobileComponent {
  const FavoriteProjectsMobileComponent({super.key});

  @override
  Widget onDataWidget(
      BuildContext context, OverviewFavoriteProjectDataState state) {
    return Padding(
      padding: const EdgeInsets.only(top: Dimensions.margin_24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Favorite Projects',
            style: context.textTheme.titleMedium
                ?.copyWith(color: context.appColorScheme.primaryText),
          ),
          Dimensions.marginVertical_8,
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: state.projects.length,
            itemBuilder: (_, int index) => Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: Dimensions.margin_8),
              child: ProjectOverviewWidget(project: state.projects[index]),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void onInitialization(BuildContext context) {
    super.onInitialization(context);
    context.read<OverviewBloc>().add(FindFavoriteProjectsEvent());
  }

  @override
  Widget onInitWidget(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: Dimensions.margin_24),
      child: Column(
        children: [
          Text(
            'Favorite Projects',
            style: context.textTheme.titleMedium
                ?.copyWith(color: context.appColorScheme.primaryText),
          ),
          Dimensions.marginVertical_8,
          ShimmerWidget(
            child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 2,
              itemBuilder: (_, int index) => Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: Dimensions.margin_8),
                child: CustomPlaceholder.box(),
              ),
            ),
          ),
        ],
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
