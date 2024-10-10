// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'services_component.dart';

// **************************************************************************
// WidgetComponentGenerator
// **************************************************************************

abstract class _$ServicesComponent extends StatelessWidget {
  const _$ServicesComponent({Key? key});

  void onInitialization(BuildContext context) {}

  @override
  Widget build(BuildContext context) {
    onInitialization(context);
    return BlocBuilder<ServicesBloc, ServicesState>(
      bloc: context.read<ServicesBloc>(),
      buildWhen: shouldRebuild,
      builder: _checkRebuild,
    );
  }

  Widget _checkRebuild(BuildContext context, ServicesState state) {
    return switch (state) {
      AllServicesDataState() => onDataWidget(context, state),
      AllServicesErrorState() => onErrorWidget(context, state),
      AllServicesLoadingState() => onLoadingWidget(context, state),
      _ => onInitWidget(context)
    };
  }

  Widget onDataWidget(BuildContext context, AllServicesDataState state);
  Widget onErrorWidget(BuildContext context, AllServicesErrorState state) {
    return Container();
  }

  Widget onLoadingWidget(BuildContext context, AllServicesLoadingState state) {
    return Container();
  }

  Widget onInitWidget(BuildContext context);
  bool shouldRebuild(previous, current) {
    return current is AllServicesState;
  }
}
