// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_projects_mobile_component.dart';

// **************************************************************************
// WidgetComponentGenerator
// **************************************************************************

abstract class _$FavoriteProjectsMobileComponent extends StatelessWidget {
  const _$FavoriteProjectsMobileComponent({Key? key});

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
      OverviewFavoriteProjectDataState() => onDataWidget(context, state),
      OverviewFavoriteProjectErrorState() => onErrorWidget(context, state),
      OverviewFavoriteProjectLoadingState() => onLoadingWidget(context, state),
      _ => onInitWidget(context)
    };
  }

  Widget onDataWidget(
      BuildContext context, OverviewFavoriteProjectDataState state);
  Widget onErrorWidget(
      BuildContext context, OverviewFavoriteProjectErrorState state) {
    return Container();
  }

  Widget onLoadingWidget(
      BuildContext context, OverviewFavoriteProjectLoadingState state) {
    return Container();
  }

  Widget onInitWidget(BuildContext context);
  bool shouldRebuild(previous, current) {
    return current is OverviewFavoriteProjectsState;
  }
}
