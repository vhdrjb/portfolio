import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio_v2/presentation/src/widget/career/career_overview_widget.dart';
import 'package:portfolio_v2/presentation/src/widget/placeholder/custom_placeholder.dart';
import 'package:portfolio_v2/presentation/src/widget/shimmer/shimmer_widget.dart';
import 'package:widget_component_annotation/widget_component_annotation.dart';

import '../../../../theme/dimensions.dart';
import '../../../../widget/error/app_error_widget.dart';
import '../../bloc/overview_bloc.dart';

part 'last_careers_component.g.dart';

@WidgetComponent(
    dataStateClass: OverviewLastCareerDataState,
    loadingStateClass: OverviewLastCareerLoadingState,
    errorStateClass: OverviewLastCareerErrorState,
    bloc: OverviewBloc,
    baseState: OverviewState,
    state: OverviewLastCareerState)
class LastCareersComponent extends _$LastCareersComponent {
  const LastCareersComponent({super.key});

  @override
  Widget onDataWidget(BuildContext context, OverviewLastCareerDataState state) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: state.careers.length,
      itemBuilder: (_, index) =>
          CareerOverviewWidget(career: state.careers[index]),
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          mainAxisExtent: Dimensions.careerHeight,
          mainAxisSpacing: Dimensions.margin_16,
          crossAxisSpacing: Dimensions.margin_16,
          maxCrossAxisExtent: Dimensions.maxCareerWidth),
    );
  }

  @override
  Widget onInitWidget(BuildContext context) {
    return ShimmerWidget(
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 3,
        itemBuilder: (_, index) => CustomPlaceholder.box(),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            mainAxisExtent: Dimensions.careerHeight,
            mainAxisSpacing: Dimensions.margin_16,
            crossAxisSpacing: Dimensions.margin_16,
            maxCrossAxisExtent: Dimensions.maxCareerWidth),
      ),
    );
  }

  @override
  Widget onErrorWidget(
      BuildContext context, OverviewLastCareerErrorState state) {
    return AppErrorWidget(
      onPress: () {
        context.read<OverviewBloc>().add(FindOverviewServiceEvent());
      },
    );
  }

  @override
  Widget onLoadingWidget(
      BuildContext context, OverviewLastCareerLoadingState state) {
    return onInitWidget(context);
  }
}
