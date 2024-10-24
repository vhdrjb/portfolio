import 'package:flutter/material.dart';
import 'package:portfolio_v2/presentation/src/extensions/context_extensions.dart';

class CopyrightWidget extends StatelessWidget {
  const CopyrightWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Design Inspiration',style: context.textTheme.titleMedium?.copyWith(
          color: context.appColorScheme.primaryText
        ),)
      ],
    );
  }
}
