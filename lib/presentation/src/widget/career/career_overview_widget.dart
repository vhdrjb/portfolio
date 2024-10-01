import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:portfolio_v2/domain/src/career/career_entity.dart';
import 'package:portfolio_v2/presentation/src/extensions/context_extensions.dart';
import 'package:portfolio_v2/presentation/src/extensions/datetime_extensions.dart';
import 'package:portfolio_v2/presentation/src/theme/dimensions.dart';

import '../label/blinking_label_widget.dart';

class CareerOverviewWidget extends StatelessWidget {
  final CareerEntity career;

  const CareerOverviewWidget({super.key, required this.career});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
          vertical: Dimensions.margin_8, horizontal: Dimensions.margin_16),
      decoration: BoxDecoration(
          border: Border.all(
            color: career.end == null
                ? context.appColorScheme.highlightColor.withOpacity(0.4)
                : context.appColorScheme.borderColor,
            width: Dimensions.careerBorder,
          ),
          borderRadius: BorderRadius.circular(Dimensions.projectBorders)),
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
          Dimensions.marginVertical_4,
          Text(
            career.company.name,
            style: context.textTheme.titleSmall
                ?.copyWith(color: context.appColorScheme.secondaryText),
          ),
          Dimensions.marginVertical_4,
          Row(
            children: [
              Flexible(
                child: Text(
                  career.start.display,
                  style: context.textTheme.bodyMedium
                      ?.copyWith(color: context.appColorScheme.secondaryText),
                ),
              ),
              Dimensions.marginHorizontal_8,
              Text('-',style: context.textTheme.titleMedium?.copyWith( color: context.appColorScheme.secondaryText),),
              Dimensions.marginHorizontal_8,
               career.end ==null ?
                const Flexible(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Flexible(child: BlinkingLabelWidget(label: 'Present',)),
                    ],
                  ),
                ) :  Flexible(
                 child: Text(
                   career.end!.display,
                   style: context.textTheme.bodyMedium
                       ?.copyWith(color: context.appColorScheme.secondaryText),
                 ),
               ),
            ],
          )
        ],
      ),
    );
  }
}
