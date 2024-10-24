import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio_v2/presentation/src/extensions/context_extensions.dart';
import 'package:portfolio_v2/presentation/src/widget/error/app_error_widget.dart';
import 'package:widget_component_annotation/widget_component_annotation.dart';

import '../../../theme/dimensions.dart';
import '../../../widget/career/career_widget.dart';
import '../../../widget/placeholder/custom_placeholder.dart';
import '../../../widget/shimmer/shimmer_widget.dart';
import '../bloc/career_bloc.dart';

part 'career_component.g.dart';

@WidgetComponent(
    dataStateClass: AllCareerDataState,
    bloc: CareerBloc,
    baseState: CareerState,
    state: AllCareersState,
    errorStateClass: AllCareerErrorState,
    loadingStateClass: AllCareerLoadingState)
class CareerComponent extends _$CareerComponent {
  const CareerComponent({super.key});

  @override
  Widget onDataWidget(context, AllCareerDataState state) {
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index) => CareerWidget(
              career: state.careers[index],
            ),
        separatorBuilder: (_, i) => Divider(
              color: context.appColorScheme.dividerColor,
            ),
        itemCount: state.careers.length);
  }

  @override
  Widget onInitWidget(context) {
    return ShimmerWidget(
        child: ListView.separated(
            shrinkWrap: true,
            itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: Dimensions.margin_16),
                  child: CustomPlaceholder.box(),
                ),
            separatorBuilder: (context, index) => Divider(
                  color: context.appColorScheme.dividerColor,
                ),
            itemCount: 3));
  }

  @override
  Widget onLoadingWidget(BuildContext context, AllCareerLoadingState state) {
    return onInitWidget(context);
  }

  @override
  Widget onErrorWidget(BuildContext context, AllCareerErrorState state) {
    return AppErrorWidget(
      onPress: () {
        context.read<CareerBloc>().add(FindAllCareerEvent());

      },
    );
  }
}
