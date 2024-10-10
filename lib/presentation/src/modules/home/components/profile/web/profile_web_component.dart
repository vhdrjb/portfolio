import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio_v2/presentation/src/modules/home/components/profile/web/profile_web_data_widget.dart';
import 'package:portfolio_v2/presentation/src/modules/home/components/profile/web/profile_web_loading_widget.dart';
import 'package:portfolio_v2/presentation/src/widget/error/app_error_widget.dart';
import 'package:widget_component_annotation/widget_component_annotation.dart';

import '../../../bloc/home_bloc.dart';

part 'profile_web_component.g.dart';

@WidgetComponent(
    baseState: HomeState,
    bloc: HomeBloc,
    state: HomeProfileState,
    dataStateClass: HomeProfileDataState,
    loadingStateClass: HomeProfileLoadingState,
    errorStateClass: HomeProfileErrorState)
class ProfileWebComponent extends _$ProfileWebComponent {
  const ProfileWebComponent({super.key});

  @override
  Widget onDataWidget(BuildContext context, HomeProfileDataState state) {
    return ProfileWebDataWidget(user: state.user);
  }

  @override
  Widget onInitWidget(BuildContext context) {
    return const ProfileWebLoadingWidget();
  }

  @override
  Widget onLoadingWidget(BuildContext context, HomeProfileLoadingState state) {
    return const ProfileWebLoadingWidget();
  }

  @override
  Widget onErrorWidget(BuildContext context, HomeProfileErrorState state) {
    return AppErrorWidget(
      onPress: () {},
    );
  }
}
