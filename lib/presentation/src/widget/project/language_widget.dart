import 'package:flutter/material.dart';
import 'package:portfolio_v2/domain/src/constants/stack_entity.dart';
import 'package:portfolio_v2/presentation/src/extensions/context_extensions.dart';
import 'package:portfolio_v2/presentation/src/extensions/string_extensions.dart';
import 'package:portfolio_v2/presentation/src/theme/dimensions.dart';

class LanguageWidget extends StatelessWidget {
  final StackEntity stack;
  const LanguageWidget({super.key,required this.stack});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox.square(
          dimension: Dimensions.stackSize,
          child: Container(
            decoration: BoxDecoration(
              color: stack.color.hexToColor,
              shape: BoxShape.circle,
            ),
          ),
        ),
        Dimensions.marginHorizontal_8,
        Text(stack.name,style: context.textTheme.bodySmall?.copyWith(
          color: context.appColorScheme.secondaryText,
        ),)
      ],
    );
  }
}
