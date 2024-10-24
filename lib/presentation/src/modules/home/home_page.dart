import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
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
import 'components/tab/tab_bar_widget.dart';
import 'home_route_strategy.dart';

class HomePage extends BasePage<HomeBloc> {
  final Widget child;
  final String? path;
  final double width;

  const HomePage({super.key, required this.child, required this.path,required this.width});

  @override
  State<StatefulWidget> createState() => _PageState();
}

class _PageState extends PageState<HomeBloc> {

  @override
  void initState() {
    super.initState();
    bloc.add(GetUserInfoEvent());
  }

  HomePage get parentWidget {
    return widget as HomePage;
  }

  @override
  Widget buildScreen(BuildContext context) {
    return Scaffold(
        backgroundColor: context.appColorScheme.surface,
        body: ScrollConfiguration(
          behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
          child: Align(
            alignment: Alignment.topCenter,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  DecoratedBox(
                    decoration: BoxDecoration(
                        color: context.appColorScheme.headerColor,
                        border: Border(
                            bottom: BorderSide(
                                color: context.appColorScheme.dividerColor,
                                width: 2))),
                    child: TabBarWidget(width: parentWidget.width,path: parentWidget.path,),
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

}
