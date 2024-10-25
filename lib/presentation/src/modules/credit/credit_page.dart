import 'package:flutter/material.dart';
import 'package:portfolio_v2/infrastructure/router/provider/home_route_provider.dart';
import 'package:portfolio_v2/presentation/presentation.dart';
import 'package:portfolio_v2/presentation/src/base/page/base_page.dart';
import 'package:portfolio_v2/presentation/src/extensions/context_extensions.dart';
import 'package:portfolio_v2/presentation/src/modules/credit/bloc/credit_bloc.dart';
import 'package:portfolio_v2/presentation/src/widget/text/hoverable_text_widget.dart';

import '../../theme/dimensions.dart';

class CreditPage extends BasePage<CreditBloc> {
  const CreditPage({super.key});

  @override
  State<StatefulWidget> createState() => _CreditState();
}

class _CreditState extends PageState<CreditBloc> {
  @override
  Widget buildScreen(BuildContext context) {
    return Center(
      child: ResponsivePageComponent(
        mobile: (size) => _Content(size: size),
        desktop: (size) => _Content(size: size),
      ),
    );
  }
}

class _Content extends StatelessWidget {
  final Size size;

  const _Content({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Design Inspiration',
            style: context.textTheme.titleMedium
                ?.copyWith(color: context.appColorScheme.primaryText),
          ),
          Dimensions.marginVertical_16,
          Text(
            '''
            This portfolio draws inspiration from GitHub's design, blending its clean, intuitive structure with personal touches to create a unique user experience. While inspired by GitHub's aesthetic, all custom elements and content are original and tailored to reflect my own creative vision and personal style.
            '''
                .trim(),
            style: context.textTheme.bodyMedium
                ?.copyWith(color: context.appColorScheme.primaryText),
          ),
          Dimensions.marginVertical_32,
          Row(
            children: [
              HoverableTextWidget(
                label: 'Licenses',
                primaryColor: context.appColorScheme.linkColor,
                onPress: () {
                  showDialog(
                    context: context,
                    useRootNavigator: true,
                    builder: (context) {
                      return Theme(
                        data: Theme.of(context).copyWith(
                          textTheme: Theme.of(context).textTheme.copyWith(
                            titleSmall: context.textTheme.titleMedium?.copyWith(
                              color: context.appColorScheme.secondaryText
                            ),
                              titleLarge: context.textTheme.titleLarge?.copyWith(
                              color: context.appColorScheme.primaryText
                            ),
                            bodyMedium: context.textTheme.bodyLarge?.copyWith(
                              color: context.appColorScheme.secondaryText
                            ),
                            bodySmall: context.textTheme.bodyMedium?.copyWith(
                              color: context.appColorScheme.primaryText
                            )
                          ),
                          scaffoldBackgroundColor: context.appColorScheme.surface,
                            listTileTheme: Theme.of(context).listTileTheme.copyWith(
                              titleTextStyle: context.textTheme.titleMedium?.copyWith(
                                color: context.appColorScheme.primaryText
                              ),
                              subtitleTextStyle: context.textTheme.titleSmall?.copyWith(
                                color: context.appColorScheme.secondaryText
                              ),
                            ),
                            appBarTheme: Theme.of(context).appBarTheme.copyWith(
                              backgroundColor: context.appColorScheme.headerColor,
                                titleTextStyle: context.textTheme.titleMedium
                                    ?.copyWith(
                                        color: context
                                            .appColorScheme.primaryText)),
                            colorScheme: context.appColorScheme.copyWith(
                              surface: context.appColorScheme.headerColor,
                              onSurface: context.appColorScheme.primaryText,
                              surfaceContainer: Colors.transparent,
                              surfaceTint: context.appColorScheme.headerColor,
                              primary: context.appColorScheme.primaryText,
                            )),
                        child: SizedBox(
                          height: size.height,
                          width: size.width,
                          child: const LicensePage(
                            applicationVersion: '',
                            applicationName: '',
                            applicationLegalese: '',
                            applicationIcon: Icon(Icons.access_time_outlined),
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
