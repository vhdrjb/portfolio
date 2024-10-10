import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio_v2/presentation/src/theme/dimensions.dart';
import 'package:portfolio_v2/presentation/src/widget/error/app_error_widget.dart';
import 'package:portfolio_v2/presentation/src/widget/placeholder/custom_placeholder.dart';
import 'package:portfolio_v2/presentation/src/widget/services/service_widget.dart';
import 'package:portfolio_v2/presentation/src/widget/shimmer/shimmer_widget.dart';
import 'package:shimmer/shimmer.dart';
import 'package:widget_component_annotation/widget_component_annotation.dart';

import '../bloc/overview_bloc.dart';

part 'services_components.g.dart';

@WidgetComponent(
    dataStateClass: OverviewServiceDataState,
    bloc: OverviewBloc,
    baseState: OverviewState,
    state: OverviewServiceState,
    loadingStateClass: OverviewServiceLoadingState,
    errorStateClass: OverviewServiceErrorState)
class ServicesComponents extends _$ServicesComponents {
  const ServicesComponents({super.key});

  @override
  Widget onDataWidget(BuildContext context, OverviewServiceDataState state) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: state.service.length,
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          mainAxisExtent: Dimensions.minServiceWidth,
          childAspectRatio: 1,
          mainAxisSpacing: Dimensions.margin_16,
          crossAxisSpacing: Dimensions.margin_16,
          maxCrossAxisExtent: Dimensions.maxServiceWidth),
      itemBuilder: (context, index) =>
          ServiceWidget(service: state.service[index]),
    );
  }

  @override
  Widget onInitWidget(BuildContext context) {
    return ShimmerWidget(
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 3,
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            mainAxisExtent: Dimensions.minServiceWidth,
            childAspectRatio: 1,
            mainAxisSpacing: Dimensions.margin_16,
            crossAxisSpacing: Dimensions.margin_16,
            maxCrossAxisExtent: Dimensions.maxServicePlaceholderWidth),
        itemBuilder: (context, index) => CustomPlaceholder.box(),
      ),
    );
  }

  @override
  Widget onLoadingWidget(
      BuildContext context, OverviewServiceLoadingState state) {
    return onInitWidget(context);
  }

  @override
  Widget onErrorWidget(BuildContext context, OverviewServiceErrorState state) {
    return AppErrorWidget(
      onPress: () {
        context.read<OverviewBloc>().add(FindOverviewServiceEvent());
      },
    );
  }
}
