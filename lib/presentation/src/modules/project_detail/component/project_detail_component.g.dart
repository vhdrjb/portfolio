// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_detail_component.dart';

// **************************************************************************
// WidgetComponentGenerator
// **************************************************************************

abstract class _$ProjectDetailComponent extends StatelessWidget {
  const _$ProjectDetailComponent({Key? key});

  void onInitialization(BuildContext context) {}

  @override
  Widget build(BuildContext context) {
    onInitialization(context);
    return BlocBuilder<ProjectDetailBloc, ProjectDetailState>(
      bloc: context.read<ProjectDetailBloc>(),
      buildWhen: shouldRebuild,
      builder: _checkRebuild,
    );
  }

  Widget _checkRebuild(BuildContext context, ProjectDetailState state) {
    return switch (state) {
      ProjectDetailDataState() => onDataWidget(context, state),
      ProjectDetailErrorState() => onErrorWidget(context, state),
      ProjectDetailLoadingState() => onLoadingWidget(context, state),
      _ => onInitWidget(context)
    };
  }

  Widget onDataWidget(BuildContext context, ProjectDetailDataState state);
  Widget onErrorWidget(BuildContext context, ProjectDetailErrorState state) {
    return Container();
  }

  Widget onLoadingWidget(
      BuildContext context, ProjectDetailLoadingState state) {
    return Container();
  }

  Widget onInitWidget(BuildContext context);
  bool shouldRebuild(previous, current) {
    return current is ProjectDetails;
  }
}
