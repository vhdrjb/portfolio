// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_web_component.dart';

// **************************************************************************
// WidgetComponentGenerator
// **************************************************************************

abstract class _$ProfileWebComponent extends StatelessWidget {
  const _$ProfileWebComponent({Key? key});

  void onInitialization(BuildContext context) {}

  @override
  Widget build(BuildContext context) {
    onInitialization(context);
    return BlocBuilder<HomeBloc, HomeState>(
      bloc: context.read<HomeBloc>(),
      buildWhen: shouldRebuild,
      builder: _checkRebuild,
    );
  }

  Widget _checkRebuild(BuildContext context, HomeState state) {
    return switch (state) {
      HomeProfileDataState() => onDataWidget(context, state),
      HomeProfileErrorState() => onErrorWidget(context, state),
      HomeProfileLoadingState() => onLoadingWidget(context, state),
      _ => onInitWidget(context)
    };
  }

  Widget onDataWidget(BuildContext context, HomeProfileDataState state);
  Widget onErrorWidget(BuildContext context, HomeProfileErrorState state) {
    return Container();
  }

  Widget onLoadingWidget(BuildContext context, HomeProfileLoadingState state) {
    return Container();
  }

  Widget onInitWidget(BuildContext context);
  bool shouldRebuild(previous, current) {
    return current is HomeProfileState;
  }
}
