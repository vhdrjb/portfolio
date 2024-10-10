import 'package:flutter/material.dart';
import 'package:portfolio_v2/presentation/src/extensions/context_extensions.dart';
import 'package:portfolio_v2/presentation/src/widget/placeholder/custom_placeholder.dart';
import 'package:portfolio_v2/presentation/src/widget/shimmer/shimmer_widget.dart';
import 'package:shimmer/shimmer.dart';
import '../../../../../theme/dimensions.dart';

class ProfileWebLoadingWidget extends StatelessWidget {
  const ProfileWebLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Dimensions.profileWebWidth,
      child: ShimmerWidget(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              constraints: const BoxConstraints(
                maxWidth: 300,
                maxHeight: 300,
              ),
              child: Container(
                decoration: BoxDecoration(
                    color: context.appColorScheme.placeHolderColor,
                    shape: BoxShape.circle),
              ),
            ),
            Dimensions.marginVertical_16,
            Padding(
              padding: const EdgeInsets.only(right: Dimensions.margin_64),
              child: CustomPlaceholder.text(),
            ),
            Dimensions.marginVertical_16,
            Padding(
              padding: const EdgeInsets.only(right: Dimensions.margin_32),
              child: CustomPlaceholder.text(),
            ),
            Dimensions.marginVertical_8,
            CustomPlaceholder.text(),
            Dimensions.marginVertical_16,
            CustomPlaceholder.button(),
            Dimensions.marginVertical_16,
            Padding(
              padding: const EdgeInsets.only(right: Dimensions.margin_64),
              child: CustomPlaceholder.text(),
            ),
            Dimensions.marginVertical_16,
            Padding(
              padding: const EdgeInsets.only(right: Dimensions.margin_32),
              child: CustomPlaceholder.text(),
            ),
            Dimensions.marginVertical_16,
            Divider(
              color: context.appColorScheme.dividerColor,
            ),
          ],
        ),
      ),
    );
  }
}
