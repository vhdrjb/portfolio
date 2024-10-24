import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio_v2/presentation/src/modules/overview/components/mobile/profile/mobile_profile_data_widget.dart';
import 'package:widget_component_annotation/widget_component_annotation.dart';

import '../../../../home/bloc/home_bloc.dart';
import '../../../bloc/overview_bloc.dart';
import 'package:flutter/material.dart';

import 'mobile_profile_loading_widget.dart';

part 'mobile_profile_component.g.dart';

@WidgetComponent(
    dataStateClass: HomeProfileDataState,
    bloc: HomeBloc,
    baseState: HomeState,
    state: HomeProfileState,
    errorStateClass: HomeProfileErrorState,
    loadingStateClass: HomeProfileLoadingState)
class MobileProfileComponent extends _$MobileProfileComponent {
  const MobileProfileComponent({super.key});

  @override
  Widget onDataWidget(BuildContext context, HomeProfileDataState state) {
    return MobileProfileDataWidget(user: state.user);
  }

  @override
  void onInitialization(BuildContext context) {
    super.onInitialization(context);
    context.read<HomeBloc>().add(GetUserInfoEvent());
    context.read<HomeBloc>().add(GetUserHighlightsEvent());
  }

  @override
  Widget onInitWidget(BuildContext context) {
    return const MobileProfileLoadingWidget();
  }
}
