import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio_v2/presentation/src/extensions/context_extensions.dart';
import 'package:portfolio_v2/presentation/src/theme/screen_style.dart';
import 'package:portfolio_v2/presentation/src/widget/career/career_overview_widget.dart';
import 'package:portfolio_v2/presentation/src/widget/placeholder/custom_placeholder.dart';
import 'package:portfolio_v2/presentation/src/widget/shimmer/shimmer_widget.dart';
import 'package:widget_component_annotation/widget_component_annotation.dart';

import '../../../../theme/dimensions.dart';
import '../../../../widget/error/app_error_widget.dart';
import '../../bloc/overview_bloc.dart';

part 'last_careers_mobile_component.g.dart';

@WidgetComponent(
    dataStateClass: OverviewLastCareerDataState,
    loadingStateClass: OverviewLastCareerLoadingState,
    errorStateClass: OverviewLastCareerErrorState,
    bloc: OverviewBloc,
    baseState: OverviewState,
    state: OverviewLastCareerState)
class LastCareersMobileComponent extends _$LastCareersMobileComponent {
  const LastCareersMobileComponent({super.key});

  @override
  Widget onDataWidget(BuildContext context, OverviewLastCareerDataState state) {
    return Padding(
      padding: const EdgeInsets.only(top: Dimensions.margin_24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Last Career',
            style: context.textTheme.titleMedium
                ?.copyWith(color: context.appColorScheme.primaryText,fontWeight: FontWeight.w700),
          ),
          Dimensions.marginVertical_8,
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: state.careers.length,
            itemBuilder: (_, index) =>
                Padding(
                  padding:   const EdgeInsets.symmetric(vertical: Dimensions.margin_8),
                  child: CareerOverviewWidget(career: state.careers[index]),
                ),
          ),
        ],
      ),
    );
  }

  @override
  void onInitialization(BuildContext context) {
    super.onInitialization(context);
    context.read<OverviewBloc>().add(FindLastCareerEvent());
  }

  @override
  Widget onInitWidget(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: Dimensions.margin_24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Last Career',
            style: context.textTheme.titleMedium
                ?.copyWith(color: context.appColorScheme.primaryText,fontWeight: FontWeight.w700),
          ),
          Dimensions.marginVertical_8,
          ShimmerWidget(
            child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 3,
              itemBuilder: (_, index) => Padding(
                padding:   const EdgeInsets.symmetric(vertical: Dimensions.margin_8),
                child: CustomPlaceholder.box(),
              ),
            ),
          ),
        ],
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
