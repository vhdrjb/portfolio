// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'highlight_component.dart';

// **************************************************************************
// WidgetComponentGenerator
// **************************************************************************

abstract class _$HighlightComponent extends StatelessWidget {
  const _$HighlightComponent({Key? key});

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
      AchievementDataState() => onDataWidget(context, state),
      AchievementsErrorState() => onErrorWidget(context, state),
      _ => onInitWidget(context)
    };
  }

  Widget onDataWidget(BuildContext context, AchievementDataState state);
  Widget onErrorWidget(BuildContext context, AchievementsErrorState state) {
    return Container();
  }

  Widget onInitWidget(BuildContext context);
  bool shouldRebuild(previous, current) {
    return current is AchievementProfileState;
  }
}
