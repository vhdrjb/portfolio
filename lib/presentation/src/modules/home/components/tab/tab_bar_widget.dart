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

  const TabBarWidget(
      {super.key, required this.width, required this.path});

  @override
  State<TabBarWidget> createState() => _TabBarMobileWidgetState();
}

class _TabBarMobileWidgetState extends State<TabBarWidget>
    with TickerProviderStateMixin {
  late HomeRouteStrategy _routeStrategy;
  late TabController _tabController;
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
    _updateIndex();
    return Row(
      children: [
        Flexible(
          child: Align(
            alignment: Alignment.centerLeft,
            child: SizedBox(
              width: 480,
              child: TabBar(
                indicatorColor: context.appColorScheme.accentColor,
                indicatorSize: TabBarIndicatorSize.label,
                dividerColor: Colors.transparent,
                dividerHeight: 0,
                overlayColor: const WidgetStatePropertyAll(Colors.transparent),
                onTap: (value) {
                  _routeStrategy.move(value, context.read<HomeBloc>());
                },
                physics: const BouncingScrollPhysics(),
                controller: _tabController,
                tabs: [
                  ...List.generate(
                    tabCount,
                        (index) {
                      if (index == 0) {
                        return Tab(
                          child: TabWidget(
                            label: 'Overview',
                            iconPath: 'overview'.toSvg,
                          ),
                        );
                      } else if (index == 1) {
                        return Tab(
                          child: TabWidget(
                            label: 'Projects',
                            iconPath: 'application'.toSvg,
                          ),
                        );
                      } else if (index == 2) {
                        return Tab(
                          child: TabWidget(
                            label: 'Services',
                            iconPath: 'service'.toSvg,
                          ),
                        );
                      } else if (index == 3) {
                        return Tab(
                          child: TabWidget(
                            label: 'Career',
                            iconPath: 'career'.toSvg,
                          ),
                        );
                      }
                      return const Spacer();
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
        overflowCount == 0
            ?  Expanded(child: Container(
          color: Colors.redAccent,
          height: 10,
        ),)
            : Container(
          height: Dimensions.tabOverflowSize,
          width: Dimensions.tabOverflowSize,
          decoration: BoxDecoration(
              color: context.appColorScheme.surface,
              borderRadius:
              BorderRadius.circular(Dimensions.buttonBorderRadius),
              border:
              Border.all(color: context.appColorScheme.dividerColor)),
          child: PopupMenuButton<int>(
            icon: Icon(
              Icons.more_horiz_rounded,
              color: context.appColorScheme.dividerColor,
            ),
            itemBuilder: (context) {
              return [
                ...List.generate(overflowCount, (index) {
                  int i = (4 -overflowCount) + index;
                  debugPrint('index is ${i}');
                  if (i == 0) {
                    return const PopupMenuItem<int>(value: 2,child: Text('Overview'),);
                  }
                  else if (i == 1) {
                    return const PopupMenuItem<int>(value: 3,child: Text('Projects'),);
                  }
                  else if (i == 2) {
                    return const PopupMenuItem<int>(value: 3,child: Text('Services'),);
                  }
                  else if (i == 3) {
                    return const PopupMenuItem<int>(value: 3,child: Text('Career'),);
                  }

                  return const PopupMenuItem<int>(value: -1,child: Text(''),);

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
    _tabController = TabController(length: tabCount, vsync: this);
  }

  void _updateIndex() {
    debugPrint(widget.path);
    switch (widget.path) {
      case Routes.services:
        {
          if (_tabController.index != 2) {
            _tabController.animateTo(2);
          }
        }
      case Routes.overview:
        {
          if (_tabController.index != 0) {
            _tabController.animateTo(0);
          }
        }
      case Routes.projects:
        {
          if (_tabController.index != 1) {
            _tabController.animateTo(1);
          }
        }
      case Routes.careers:
        if (_tabController.index != 3) {
          _tabController.animateTo(3);
        }
      case _:
        {
          if (_tabController.index != 0) {
            _tabController.animateTo(0);
          }
        }
    }
  }

}
