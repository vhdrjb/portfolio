import 'package:flutter/material.dart';
import 'package:portfolio_v2/domain/src/career/career_entity.dart';
import 'package:portfolio_v2/domain/src/tag/tag_entity.dart';
import 'package:portfolio_v2/presentation/src/extensions/context_extensions.dart';
import 'package:portfolio_v2/presentation/src/extensions/datetime_extensions.dart';

import '../../theme/dimensions.dart';
import '../tag/project_tags_widget.dart';
import '../text/blinking_label_widget.dart';

class CareerWidget extends StatelessWidget {
  final CareerEntity career;

  const CareerWidget({super.key, required this.career});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: Dimensions.margin_16),
      child: Row(
        children: [
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  career.position,
                  style: context.textTheme.titleMedium?.copyWith(
                      color: context.appColorScheme.primaryText,
                      fontWeight: FontWeight.w600),
                ),
                Dimensions.marginVertical_16,
                Text(
                  career.company.name,
                  style: context.textTheme.titleSmall
                      ?.copyWith(color: context.appColorScheme.secondaryText),
                ),
                Dimensions.marginVertical_4,
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Flexible(
                    child: Text(
                      career.start.display,
                      style: context.textTheme.bodyMedium
                          ?.copyWith(color: context.appColorScheme.primaryText),
                    ),
                  ),
                  Dimensions.marginHorizontal_8,
                  Text(
                    '-',
                    style: context.textTheme.titleMedium
                        ?.copyWith(color: context.appColorScheme.secondaryText),
                  ),
                  Dimensions.marginHorizontal_8,
                  career.end == null
                      ? const Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Flexible(
                                child: BlinkingLabelWidget(
                              label: 'Present',
                            )),
                          ],
                        )
                      : Text(
                          career.end!.display,
                          style: context.textTheme.bodyMedium?.copyWith(
                              color: context.appColorScheme.primaryText),
                        ),
                ],
              ),
              Text(
                career.start.relativeDuration(career.end ?? DateTime.now()),
                style: context.textTheme.titleSmall
                    ?.copyWith(color: context.appColorScheme.secondaryText),
              )
            ],
          )
        ],
      ),
    );
  }
}
