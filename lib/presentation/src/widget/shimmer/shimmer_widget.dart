import 'package:flutter/material.dart';
import 'package:portfolio_v2/presentation/src/extensions/context_extensions.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerWidget extends StatelessWidget {
  final Widget child;

  const ShimmerWidget({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      period: const Duration(seconds: 2),
      direction: ShimmerDirection.ltr,
      baseColor: context.appColorScheme.shimmerBaseColor,
      highlightColor: context.appColorScheme.shimmerColor,
      child: child,
    );
  }
}
