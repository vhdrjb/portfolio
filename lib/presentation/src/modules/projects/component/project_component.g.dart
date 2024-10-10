// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_component.dart';

// **************************************************************************
// WidgetComponentGenerator
// **************************************************************************

abstract class _$ProjectComponent extends StatelessWidget {
  const _$ProjectComponent({Key? key});

  void onInitialization(BuildContext context) {}

  @override
  Widget build(BuildContext context) {
    onInitialization(context);
    return BlocBuilder<ProjectsBloc, ProjectsState>(
      bloc: context.read<ProjectsBloc>(),
      buildWhen: shouldRebuild,
      builder: _checkRebuild,
    );
  }

  Widget _checkRebuild(BuildContext context, ProjectsState state) {
    return switch (state) {
      AllProjectDataState() => onDataWidget(context, state),
      AllProjectErrorState() => onErrorWidget(context, state),
      AllProjectLoadingState() => onLoadingWidget(context, state),
      _ => onInitWidget(context)
    };
  }

  Widget onDataWidget(BuildContext context, AllProjectDataState state);
  Widget onErrorWidget(BuildContext context, AllProjectErrorState state) {
    return Container();
  }

  Widget onLoadingWidget(BuildContext context, AllProjectLoadingState state) {
    return Container();
  }

  Widget onInitWidget(BuildContext context);
  bool shouldRebuild(previous, current) {
    return current is AllProjectState;
  }
}
