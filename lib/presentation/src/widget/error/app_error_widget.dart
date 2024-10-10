import 'package:flutter/material.dart';
import 'package:portfolio_v2/presentation/src/extensions/context_extensions.dart';
import 'package:portfolio_v2/presentation/src/theme/button_style.dart';
import 'package:portfolio_v2/presentation/src/theme/dimensions.dart';

class AppErrorWidget extends StatelessWidget {
  final VoidCallback? onPress;

  const AppErrorWidget({super.key, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Something went wrong. Please try again.',
            style: context.textTheme.titleMedium?.copyWith(
              color: context.appColorScheme.primaryText,
            ),
          ),
          Dimensions.marginVertical_16,
          if (onPress != null)
            ElevatedButton(
              onPressed: onPress,
              style: AppButtonStyle(
                context: context,
              ).copyWith(
                padding: const WidgetStatePropertyAll(EdgeInsets.symmetric(horizontal: Dimensions.margin_16))
              ),
              child: const Text('Retry'),
            )
        ],
      ),
    );
  }
}
