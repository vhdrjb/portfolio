// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'career_component.dart';

// **************************************************************************
// WidgetComponentGenerator
// **************************************************************************

abstract class _$CareerComponent extends StatelessWidget {
  const _$CareerComponent({Key? key});

  void onInitialization(BuildContext context) {}

  @override
  Widget build(BuildContext context) {
    onInitialization(context);
    return BlocBuilder<CareerBloc, CareerState>(
      bloc: context.read<CareerBloc>(),
      buildWhen: shouldRebuild,
      builder: _checkRebuild,
    );
  }

  Widget _checkRebuild(BuildContext context, CareerState state) {
    return switch (state) {
      AllCareerDataState() => onDataWidget(context, state),
      AllCareerErrorState() => onErrorWidget(context, state),
      AllCareerLoadingState() => onLoadingWidget(context, state),
      _ => onInitWidget(context)
    };
  }

  Widget onDataWidget(BuildContext context, AllCareerDataState state);
  Widget onErrorWidget(BuildContext context, AllCareerErrorState state) {
    return Container();
  }

  Widget onLoadingWidget(BuildContext context, AllCareerLoadingState state) {
    return Container();
  }

  Widget onInitWidget(BuildContext context);
  bool shouldRebuild(previous, current) {
    return current is AllCareersState;
  }
}
