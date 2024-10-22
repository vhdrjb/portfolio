import 'package:flutter/material.dart';
import 'package:portfolio_v2/presentation/src/extensions/context_extensions.dart';
import 'package:portfolio_v2/presentation/src/widget/shimmer/shimmer_widget.dart';

import '../../../../../theme/dimensions.dart';
import '../../../../../widget/placeholder/custom_placeholder.dart';

class MobileProfileLoadingWidget extends StatelessWidget {
  const MobileProfileLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ShimmerWidget(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Dimensions.marginHorizontal_16,
              Container(
                constraints: const BoxConstraints(
                  maxWidth: Dimensions.profileMobileImageSize,
                  maxHeight: Dimensions.profileMobileImageSize,
                ),
                child: Container(
                  decoration: BoxDecoration(
                      color: context.appColorScheme.placeHolderColor,
                      shape: BoxShape.circle),
                ),
              ),
              Dimensions.marginHorizontal_16,
              Flexible(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(right: Dimensions.margin_64),
                      child: CustomPlaceholder.text(),
                    ),
                    Dimensions.marginVertical_16,
                    Padding(
                      padding:
                          const EdgeInsets.only(right: Dimensions.margin_32),
                      child: CustomPlaceholder.text(),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Dimensions.marginVertical_32,
          Padding(
            padding: const EdgeInsets.only(
                right: Dimensions.margin_64, left: Dimensions.margin_64),
            child: CustomPlaceholder.text(),
          ),
          Dimensions.marginVertical_32,
          Padding(
            padding: const EdgeInsets.only(
                right: Dimensions.margin_64, left: Dimensions.margin_64),
            child: CustomPlaceholder.button(),
          ),
          Dimensions.marginVertical_16,
          Padding(
            padding: const EdgeInsets.only(left: Dimensions.margin_16),
            child: Align(
              alignment: Alignment.centerLeft,
              child: CustomPlaceholder.text(),
            ),
          ),
          Dimensions.marginVertical_8,
          Padding(
            padding: const EdgeInsets.only(
                left: Dimensions.margin_16, right: Dimensions.margin_24),
            child: Align(
              alignment: Alignment.centerLeft,
              child: CustomPlaceholder.text(),
            ),
          ),
          Dimensions.marginVertical_8,
          Padding(
            padding: const EdgeInsets.only(
                left: Dimensions.margin_16, right: Dimensions.margin_24),
            child: Align(
              alignment: Alignment.centerLeft,
              child: CustomPlaceholder.text(),
            ),
          ),
          Dimensions.marginVertical_16,
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: Dimensions.margin_24),
            child: Divider(
              color: context.appColorScheme.dividerColor,
              thickness: Dimensions.dividerHeight,
            ),
          ),
          Dimensions.marginVertical_8,
          Padding(
            padding: const EdgeInsets.only(
                left: Dimensions.margin_16, right: Dimensions.margin_24),
            child: CustomPlaceholder.smallText(),
          ),
          Dimensions.marginVertical_8,
          Padding(
            padding: const EdgeInsets.only(
                left: Dimensions.margin_16, right: Dimensions.margin_24),
            child: CustomPlaceholder.smallText(),
          ),
          Dimensions.marginVertical_8,
          Padding(
            padding: const EdgeInsets.only(
                left: Dimensions.margin_16, right: Dimensions.margin_24),
            child: CustomPlaceholder.smallText(),
          ),
        ],
      ),
    );
  }
}
