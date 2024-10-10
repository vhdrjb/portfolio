// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'services_components.dart';

// **************************************************************************
// WidgetComponentGenerator
// **************************************************************************

abstract class _$ServicesComponents extends StatelessWidget {
  const _$ServicesComponents({Key? key});

  void onInitialization(BuildContext context) {}

  @override
  Widget build(BuildContext context) {
    onInitialization(context);
    return BlocBuilder<OverviewBloc, OverviewState>(
      bloc: context.read<OverviewBloc>(),
      buildWhen: shouldRebuild,
      builder: _checkRebuild,
    );
  }

  Widget _checkRebuild(BuildContext context, OverviewState state) {
    return switch (state) {
      OverviewServiceDataState() => onDataWidget(context, state),
      OverviewServiceErrorState() => onErrorWidget(context, state),
      OverviewServiceLoadingState() => onLoadingWidget(context, state),
      _ => onInitWidget(context)
    };
  }

  Widget onDataWidget(BuildContext context, OverviewServiceDataState state);
  Widget onErrorWidget(BuildContext context, OverviewServiceErrorState state) {
    return Container();
  }

  Widget onLoadingWidget(
      BuildContext context, OverviewServiceLoadingState state) {
    return Container();
  }

  Widget onInitWidget(BuildContext context);
  bool shouldRebuild(previous, current) {
    return current is OverviewServiceState;
  }
}
