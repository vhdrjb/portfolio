import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio_v2/domain/src/achievements/achievements_entity.dart';
import 'package:portfolio_v2/presentation/src/extensions/context_extensions.dart';
import 'package:portfolio_v2/presentation/src/extensions/list_extensions.dart';
import 'package:portfolio_v2/presentation/src/extensions/string_extensions.dart';
import 'package:portfolio_v2/presentation/src/widget/error/app_error_widget.dart';
import 'package:widget_component_annotation/widget_component_annotation.dart';

import '../../../theme/dimensions.dart';
import '../bloc/home_bloc.dart';

part 'highlight_component.g.dart';

@WidgetComponent(
  dataStateClass: AchievementDataState,
  state: AchievementProfileState,
  bloc: HomeBloc,
  baseState: HomeState,
  errorStateClass: AchievementsErrorState,
)
class HighlightComponent extends _$HighlightComponent {
  const HighlightComponent({super.key});

  @override
  Widget onDataWidget(BuildContext context, AchievementDataState state) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: Dimensions.margin_16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Dimensions.marginVertical_16,
          Divider(
            color: context.appColorScheme.dividerColor,
          ),
          Text(
            'Professional Highlights',
            style: context.textTheme.titleMedium
                ?.copyWith(color: context.appColorScheme.primaryText),
          ),
          Dimensions.marginVertical_8,
          Wrap(
            children: [
              ...state.achievements.map(
                (e) => Padding(
                  padding: const EdgeInsets.all(Dimensions.margin_4),
                  child: Tooltip(
                      textStyle: context.textTheme.bodySmall
                          ?.copyWith(color: context.appColorScheme.primaryText),
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(Dimensions.projectBorders),
                          color: context.appColorScheme.surface),
                      margin: const EdgeInsets.only(top: Dimensions.margin_8),
                      message: e.name,
                      child: CachedNetworkImage(
                        imageUrl: e.iconUrl.toSupaBaseUrl,
                        height: Dimensions.highlightSize,
                        width: Dimensions.highlightSize,
                      )),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget onErrorWidget(BuildContext context, AchievementsErrorState state) {
    return AppErrorWidget(
      onPress: () {
        context.read<HomeBloc>().add(GetUserHighlightsEvent());
      },
    );
  }

  @override
  Widget onInitWidget(BuildContext context) {
    return Container();
  }
}
