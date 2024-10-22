import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio_v2/presentation/src/extensions/context_extensions.dart';
import 'package:portfolio_v2/presentation/src/theme/dimensions.dart';
import 'package:portfolio_v2/presentation/src/theme/screen_style.dart';
import 'package:portfolio_v2/presentation/src/widget/error/app_error_widget.dart';
import 'package:portfolio_v2/presentation/src/widget/placeholder/custom_placeholder.dart';
import 'package:portfolio_v2/presentation/src/widget/services/service_widget.dart';
import 'package:portfolio_v2/presentation/src/widget/shimmer/shimmer_widget.dart';
import 'package:shimmer/shimmer.dart';
import 'package:widget_component_annotation/widget_component_annotation.dart';

import '../../bloc/overview_bloc.dart';

part 'services_mobile_components.g.dart';

@WidgetComponent(
    dataStateClass: OverviewServiceDataState,
    bloc: OverviewBloc,
    baseState: OverviewState,
    state: OverviewServiceState,
    loadingStateClass: OverviewServiceLoadingState,
    errorStateClass: OverviewServiceErrorState)
class ServicesMobileComponents extends _$ServicesMobileComponents {
  const ServicesMobileComponents({super.key});

  @override
  Widget onDataWidget(BuildContext context, OverviewServiceDataState state) {
    return Padding(
      padding: const EdgeInsets.only(top: Dimensions.margin_24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Service',
            style: context.textTheme.titleMedium
                ?.copyWith(color: context.appColorScheme.primaryText),
          ),
          Dimensions.marginVertical_8,
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: state.service.length,
            shrinkWrap: true,
            itemBuilder: (context, index) => Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: Dimensions.margin_8),
              child: ServiceWidget(service: state.service[index]),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget onInitWidget(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: Dimensions.margin_24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Services',
            style: context.textTheme.titleMedium
                ?.copyWith(color: context.appColorScheme.primaryText),
          ),
          Dimensions.marginVertical_8,
          ShimmerWidget(
            child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 3,
              shrinkWrap: true,
              itemBuilder: (context, index) => Padding(
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
