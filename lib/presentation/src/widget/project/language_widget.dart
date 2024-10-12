import 'package:flutter/material.dart';
import 'package:portfolio_v2/domain/src/constants/stack_entity.dart';
import 'package:portfolio_v2/presentation/src/extensions/context_extensions.dart';
import 'package:portfolio_v2/presentation/src/extensions/string_extensions.dart';
import 'package:portfolio_v2/presentation/src/theme/dimensions.dart';

class LanguageWidget extends StatelessWidget {
  final Iterable<StackEntity> stack;

  const LanguageWidget({super.key, required this.stack});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          ...stack.map((e) => Flexible(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox.square(
                        dimension: Dimensions.stackSize,
                        child: Container(
                          decoration: BoxDecoration(
                            color: e.color.hexToColor,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                      Dimensions.marginHorizontal_8,
                      FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          e.name,
                          style: context.textTheme.bodyMedium?.copyWith(
                            color: context.appColorScheme.secondaryText,
                          ),
                        ),
                      )
                    ],
                  ),
            ),
          )),
        ],
      ),
    );
  }
}
