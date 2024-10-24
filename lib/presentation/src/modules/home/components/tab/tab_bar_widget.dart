import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio_v2/presentation/presentation.dart';
import 'package:portfolio_v2/presentation/src/extensions/context_extensions.dart';
import 'package:portfolio_v2/presentation/src/extensions/string_extensions.dart';
import 'package:portfolio_v2/presentation/src/theme/dimensions.dart';

import '../../../../widget/tab/tab_widget.dart';
import '../../home_route_strategy.dart';

class TabBarWidget extends StatefulWidget {
  final double width;
  final String? path;

  const TabBarWidget({super.key, required this.width, required this.path});

  @override
  State<TabBarWidget> createState() => _TabBarMobileWidgetState();
}

class _TabBarMobileWidgetState extends State<TabBarWidget>
    with TickerProviderStateMixin {
  late HomeRouteStrategy _routeStrategy;
  late int overflowCount;
  late int tabCount;

  @override
  void initState() {
    super.initState();
    _routeStrategy = const HomeRouteStrategy();
  }

  @override
  Widget build(BuildContext context) {
    _buildTabs();
    return Row(
      children: [
        if (tabCount > 0)
          Flexible(
            child: Align(
              alignment: Alignment.centerLeft,
              child: SizedBox(
                width: Dimensions.tabBarWidth,
                height: Dimensions.tabBarHeight,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: Dimensions.margin_8),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Row(
                        children: [
                          ...List.generate(
                            tabCount,
                            (index) {
                              if (index == 0) {
                                return TabWidget(
                                  onPress: () {
                                    _routeStrategy.move(
                                        0, context.read<HomeBloc>());
                                  },
                                  selected: widget.path == Routes.overview,
                                  label: 'Overview',
                                  iconPath: 'overview'.toSvg,
                                );
                              } else if (index == 1) {
                                return TabWidget(
                                  onPress: () {
                                    _routeStrategy.move(
                                        1, context.read<HomeBloc>());
                                  },
                                  selected: widget.path == Routes.projects,
                                  label: 'Projects',
                                  iconPath: 'application'.toSvg,
                                );
                              } else if (index == 2) {
                                return TabWidget(
                                  onPress: () {
                                    _routeStrategy.move(
                                        2, context.read<HomeBloc>());
                                  },
                                  selected: widget.path == Routes.services,
                                  label: 'Services',
                                  iconPath: 'service'.toSvg,
                                );
                              } else if (index == 3) {
                                return TabWidget(
                                  onPress: () {
                                    _routeStrategy.move(
                                        3, context.read<HomeBloc>());
                                  },
                                  selected: widget.path == Routes.careers,
                                  label: 'Career',
                                  iconPath: 'career'.toSvg,
                                );
                              }
                              return const Spacer();
                            },
                          ),
                        ],
                      ),
                      AnimatedPositioned(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeIn,
                          left: _calculateLeft(),
                          width: Dimensions.tabIndicatorWidth,
                          bottom: -Dimensions.margin_8,
                          child: Container(
                            height: 5,
                            decoration: UnderlineTabIndicator(
                                borderSide: BorderSide(
                                    width: 2,
                                    color: context.appColorScheme.accentColor)),
                          ))
                    ],
                  ),
                ),
              ),
            ),
          ),
        if (overflowCount > 0)
          Container(
            height: Dimensions.tabOverflowSize,
            width: Dimensions.tabOverflowSize,
            decoration: BoxDecoration(
                color: context.appColorScheme.surface,
                borderRadius:
                    BorderRadius.circular(Dimensions.buttonBorderRadius),
                border: Border.all(color: context.appColorScheme.dividerColor)),
            child: PopupMenuButton<int>(
              onSelected: (value) {
                _routeStrategy.move(value, context.read<HomeBloc>());
              },
              icon: Icon(
                Icons.more_horiz_rounded,
                color: context.appColorScheme.dividerColor,
              ),
              itemBuilder: (context) {
                return [
                  ...List.generate(overflowCount, (index) {
                    int i = (4 - overflowCount) + index;
                    debugPrint('index is $i');
                    if (i == 0) {
                      return const PopupMenuItem<int>(
                        value: 0,
                        child: Text('Overview'),
                      );
                    } else if (i == 1) {
                      return const PopupMenuItem<int>(
                        value: 1,
                        child: Text('Projects'),
                      );
                    } else if (i == 2) {
                      return const PopupMenuItem<int>(
                        value: 2,
                        child: Text('Services'),
                      );
                    } else if (i == 3) {
                      return const PopupMenuItem<int>(
                        value: 3,
                        child: Text('Career'),
                      );
                    }

                    return const PopupMenuItem<int>(
                      value: -1,
                      child: Text(''),
                    );
                  })
                ];
              },
            ),
          ),
        Dimensions.marginHorizontal_4,
      ],
    );
  }

  void _buildTabs() {
    if (widget.width > 528) {
      tabCount = 4;
      overflowCount = 0;
    } else {
      double tabWidth = 180;
      double width =
          widget.width - (Dimensions.margin_8 + Dimensions.tabOverflowSize);
      tabCount = width ~/ tabWidth;
      overflowCount = 4 - tabCount;
    }
  }

  double _calculateLeft() {
    double baseLeft = Dimensions.margin_8;
    if (widget.path == Routes.overview) {
      baseLeft += 0;
    } else if (widget.path == Routes.projects) {
      if (overflowCount == 3) {
        baseLeft += widget.width + Dimensions.tabIndicatorWidth;
      }else {
        baseLeft += Dimensions.tabIndicatorWidth * 1;
      }
    } else if (widget.path == Routes.services) {
      if (overflowCount >= 2) {
        baseLeft += widget.width + Dimensions.tabIndicatorWidth;
      }else {
        baseLeft += Dimensions.tabIndicatorWidth * 2;
      }
    } else if (widget.path == Routes.careers ) {
      if (overflowCount >= 1) {
        baseLeft += widget.width + Dimensions.tabIndicatorWidth;
      }else {
        baseLeft += Dimensions.tabIndicatorWidth * 3;
      }
    }
    return baseLeft;
  }
}
