import 'package:flutter/material.dart';
import 'package:portfolio_v2/infrastructure/router/provider/home_route_provider.dart';
import 'package:portfolio_v2/presentation/src/extensions/context_extensions.dart';
import 'package:portfolio_v2/presentation/src/theme/dimensions.dart';

class ProjectNameWidget extends StatelessWidget {
  final String projectName;
  final String? companyName;

  const ProjectNameWidget(
      {super.key, required this.projectName, this.companyName});

  @override
  Widget build(BuildContext context) {
    if (companyName != null) {
      return Row(
        children: [
          Flexible(
            child: Text(
              companyName!,
              overflow: TextOverflow.clip,
              maxLines: 1,
              style: context.textTheme.titleMedium
                  ?.copyWith(color: context.appColorScheme.secondaryText),
            ),
          ),
          Dimensions.marginHorizontal_8,
          Text(
            '/',
            style: context.textTheme.titleMedium
                ?.copyWith(color: context.appColorScheme.primaryText),
          ),
          Dimensions.marginHorizontal_8,
          Expanded(
            child: Text(
              projectName,
              overflow: TextOverflow.clip,
              maxLines: 1,
              style: context.textTheme.titleMedium
                  ?.copyWith(color: context.appColorScheme.primaryText),
            ),
          )
        ],
      );
    } else {
      return Text(
        projectName,
        style: context.textTheme.titleMedium
            ?.copyWith(color: context.appColorScheme.primaryText),
      );
    }
  }
}
