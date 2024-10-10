import 'package:flutter/material.dart';
import 'package:portfolio_v2/presentation/src/extensions/context_extensions.dart';

import '../../theme/dimensions.dart';

class CustomPlaceholder extends StatelessWidget {
  final double height;

  const CustomPlaceholder._({super.key, required this.height});

  factory CustomPlaceholder.text() {
    return const CustomPlaceholder._(height: Dimensions.textPlaceholderHeight);
  }

  factory CustomPlaceholder.button() =>
      const CustomPlaceholder._(height: Dimensions.buttonPlaceHolderHeight);

  factory CustomPlaceholder.smallText() =>
      const CustomPlaceholder._(height: Dimensions.smallTextPlaceholderHeight);

  factory CustomPlaceholder.box() => const CustomPlaceholder._(
        height: Dimensions.projectsHeight,
      );

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder:(context, constraints) =>  Container(
        height: height,
        constraints: BoxConstraints(
          maxWidth: constraints.maxWidth/3
        ),
        decoration: BoxDecoration(color: context.appColorScheme.placeHolderColor,borderRadius: BorderRadius.circular(Dimensions.projectBorders)),
      ),
    );
  }
}
