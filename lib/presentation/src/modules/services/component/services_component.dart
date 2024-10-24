import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio_v2/presentation/src/widget/error/app_error_widget.dart';
import 'package:portfolio_v2/presentation/src/widget/placeholder/custom_placeholder.dart';
import 'package:portfolio_v2/presentation/src/widget/shimmer/shimmer_widget.dart';
import 'package:widget_component_annotation/widget_component_annotation.dart';

import '../../../theme/dimensions.dart';
import '../../../widget/services/service_widget.dart';
import '../bloc/services_bloc.dart';

part 'services_component.g.dart';

@WidgetComponent(
    dataStateClass: AllServicesDataState,
    bloc: ServicesBloc,
    baseState: ServicesState,
    state: AllServicesState,
    loadingStateClass: AllServicesLoadingState,
    errorStateClass: AllServicesErrorState)
class ServicesComponent extends _$ServicesComponent {
  const ServicesComponent({super.key});

  @override
  Widget onDataWidget(context, AllServicesDataState state) {
    return Padding(
      padding: const EdgeInsets.only(bottom: Dimensions.margin_16),
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: state.services.length,
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            mainAxisExtent: Dimensions.minServiceWidth,
            childAspectRatio: 1,
            mainAxisSpacing: Dimensions.margin_16,
            crossAxisSpacing: Dimensions.margin_16,
            maxCrossAxisExtent: Dimensions.maxServiceWidth),
        itemBuilder: (context, index) =>
            ServiceWidget(service: state.services[index]),
      ),
    );
  }

  @override
  Widget onInitWidget(context) {
    return ShimmerWidget(
      child: GridView.builder(
        itemCount: 6,
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            mainAxisExtent: Dimensions.minServiceWidth,
            childAspectRatio: 1,
            mainAxisSpacing: Dimensions.margin_16,
            crossAxisSpacing: Dimensions.margin_16,
            maxCrossAxisExtent: Dimensions.maxServiceWidth),
        itemBuilder: (context, index) => CustomPlaceholder.box(),
      ),
    );
  }

  @override
  Widget onLoadingWidget(BuildContext context, AllServicesLoadingState state) {
    return onInitWidget(context);
  }

  @override
  Widget onErrorWidget(BuildContext context, AllServicesErrorState state) {
    return AppErrorWidget(
      onPress: () {
        context.read<ServicesBloc>().add(FindAllServicesEvent());
      },
    );
  }
}
