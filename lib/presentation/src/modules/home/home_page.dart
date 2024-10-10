import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio_v2/presentation/src/modules/home/components/profile/web/profile_web_component.dart';
import '../../config/routes.dart';
import '../../extensions/context_extensions.dart';
import '../../extensions/string_extensions.dart';
import 'components/profile/web/profile_web_loading_widget.dart';
import '../../theme/dimensions.dart';
import '../../base/page/base_page.dart';
import '../../widget/tab/tab_widget.dart';
import 'bloc/home_bloc.dart';
import 'home_route_strategy.dart';

class HomePage extends BasePage<HomeBloc> {
  final Widget child;
  final String? path;

  const HomePage({super.key, required this.child, required this.path});

  @override
  State<StatefulWidget> createState() => _PageState();
}

class _PageState extends PageState<HomeBloc>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late HomeRouteStrategy _routeStrategy;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
        length: 4,
        vsync: this,
        animationDuration: const Duration(milliseconds: 500));
    _routeStrategy = const HomeRouteStrategy();
    bloc.add(GetUserInfoEvent());
  }

  HomePage get parentWidget {
    return widget as HomePage;
  }

  @override
  Widget buildScreen(BuildContext context) {
    _updateIndex();
    return Scaffold(
        backgroundColor: context.appColorScheme.surface,
        body: ScrollConfiguration(
          behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  DecoratedBox(
                    decoration: BoxDecoration(
                        color: context.appColorScheme.headerColor,
                        border: Border(
                            bottom: BorderSide(
                                color: context.appColorScheme.dividerColor,
                                width: 2))),
                    child: Row(
                      children: [
                        Expanded(
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: SizedBox(
                              width: 450,
                              child: TabBar(
                                indicatorColor:
                                    context.appColorScheme.accentColor,
                                indicatorSize: TabBarIndicatorSize.label,
                                dividerColor: Colors.transparent,
                                dividerHeight: 0,
                                overlayColor: const WidgetStatePropertyAll(
                                    Colors.transparent),
                                onTap: (value) {
                                  _routeStrategy.move(value, bloc);
                                },
                                physics: const BouncingScrollPhysics(),
                                controller: _tabController,
                                tabs: [
                                  Tab(
                                    child: TabWidget(
                                      label: 'Overview',
                                      iconPath: 'overview'.toSvg,
                                    ),
                                  ),
                                  Tab(
                                    child: TabWidget(
                                      label: 'Projects',
                                      iconPath: 'application'.toSvg,
                                    ),
                                  ),
                                  Tab(
                                    child: TabWidget(
                                      label: 'Services',
                                      iconPath: 'service'.toSvg,
                                    ),
                                  ),
                                  Tab(
                                    child: TabWidget(
                                      label: 'Career',
                                      iconPath: 'career'.toSvg,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const Spacer()
                      ],
                    ),
                  ),
                  Dimensions.marginVertical_32,
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Flexible(
                        child: ProfileWebComponent(),
                      ),
                      Dimensions.marginHorizontal_32,
                      Expanded(
                        child: Center(
                          child: Container(
                            constraints: const BoxConstraints(
                              minWidth: Dimensions.homeContentWebMinWidth,
                              maxWidth: Dimensions.homeContentWebMaxWidth,
                            ),
                            child: parentWidget.child,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }

  void _updateIndex() {
    debugPrint(parentWidget.path);
    switch (parentWidget.path) {
      case Routes.services:
        {
          if (_tabController.index != 2) {
            _tabController.animateTo(2);
          }
        }
      case Routes.overview:
        {
          if (_tabController.index !=0) {
            _tabController.animateTo(0);
          }
        }
      case Routes.projects:
        {
          if (_tabController.index !=1 ) {
            _tabController.animateTo(1);
          }
        }
      case Routes.careers:
        if (_tabController.index != 3) {
          _tabController.animateTo(3);
        }
      case _:
        {
          if (_tabController.index !=0) {
            _tabController.animateTo(0);
          }
        }
    }
  }
}
