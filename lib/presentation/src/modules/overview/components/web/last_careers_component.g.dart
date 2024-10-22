// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'last_careers_component.dart';

// **************************************************************************
// WidgetComponentGenerator
// **************************************************************************

abstract class _$LastCareersComponent extends StatelessWidget {
  const _$LastCareersComponent({Key? key});

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
      OverviewLastCareerDataState() => onDataWidget(context, state),
      OverviewLastCareerErrorState() => onErrorWidget(context, state),
      OverviewLastCareerLoadingState() => onLoadingWidget(context, state),
      _ => onInitWidget(context)
    };
  }

  Widget onDataWidget(BuildContext context, OverviewLastCareerDataState state);
  Widget onErrorWidget(
      BuildContext context, OverviewLastCareerErrorState state) {
    return Container();
  }

  Widget onLoadingWidget(
      BuildContext context, OverviewLastCareerLoadingState state) {
    return Container();
  }

  Widget onInitWidget(BuildContext context);
  bool shouldRebuild(previous, current) {
    return current is OverviewLastCareerState;
  }
}
