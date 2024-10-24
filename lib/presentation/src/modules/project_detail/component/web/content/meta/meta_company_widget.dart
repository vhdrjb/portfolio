import 'package:flutter/material.dart';
import 'package:portfolio_v2/domain/domain.dart';
import 'package:portfolio_v2/domain/src/company/company_entity.dart';
import 'package:portfolio_v2/infrastructure/router/provider/home_route_provider.dart';
import 'package:portfolio_v2/presentation/src/extensions/context_extensions.dart';
import 'package:portfolio_v2/presentation/src/widget/text/hoverable_text_widget.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../../theme/dimensions.dart';

class MetaCompanyWidget extends StatelessWidget {
  final CompanyEntity company;

  const MetaCompanyWidget({super.key, required this.company});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Dimensions.marginVertical_16,
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            'Associate with',
            style: context.textTheme.titleSmall?.copyWith(
                color: context.appColorScheme.secondaryText,
                fontWeight: FontWeight.w600),
          ),
        ),
        Dimensions.marginHorizontal_16,
        company.url != null
            ? Expanded(
              child: HoverableTextWidget(
                  label: company.name,
                  style: context.textTheme.titleMedium,
                  primaryColor: context.appColorScheme.primaryText,
                  url: company.url,
                ),
            )
            : Expanded(
              child: Text(
                  company.name,
                  style: context.textTheme.titleMedium?.copyWith(
                    color: context.appColorScheme.primaryText,
                  ),
                ),
            ),
      ],
    );
  }
}
