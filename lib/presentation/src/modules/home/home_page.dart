import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio_v2/presentation/src/extensions/context_extensions.dart';
import 'package:portfolio_v2/presentation/src/extensions/string_extensions.dart';
import 'package:portfolio_v2/presentation/src/modules/home/components/profile_web_component.dart';
import 'package:portfolio_v2/presentation/src/theme/dimensions.dart';
import '../../base/page/base_page.dart';
import '../../widget/tab/tab_widget.dart';
import 'bloc/home_bloc.dart';

class HomePage extends BasePage<HomeBloc> {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() => _PageState();
}

class _PageState extends PageState<HomeBloc>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this,animationDuration: Duration(milliseconds: 50));
  }

  @override
  Widget buildScreen(BuildContext context) {
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
                                  debugPrint('tab clicked :$value');
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
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const ProfileComponent(),
                      Dimensions.marginHorizontal_32,
                      Container(
                        constraints: BoxConstraints(
                          minWidth: Dimensions.homeContentWebMinWidth,
                          maxWidth: Dimensions.homeContentWebMaxWidth,
                          maxHeight: context.screenSize.height
                        ),
                        child: TabBarView(
                          physics: NeverScrollableScrollPhysics(),
                          children: [
                            Container(
                              color: Colors.redAccent,
                            ),
                            Container(
                              color: Colors.green,
                            ),
                            Container(
                              color: Colors.grey,
                            ),
                          ],
                          controller: _tabController,
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
}
