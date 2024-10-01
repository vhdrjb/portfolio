import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_v2/domain/src/service/service_entity.dart';
import 'package:portfolio_v2/presentation/src/extensions/context_extensions.dart';
import 'package:portfolio_v2/presentation/src/extensions/string_extensions.dart';
import 'package:portfolio_v2/presentation/src/theme/button_style.dart';
import 'package:portfolio_v2/presentation/src/theme/dimensions.dart';

class ServiceWidget extends StatelessWidget {
  final ServiceEntity service;

  const ServiceWidget({super.key, required this.service});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(Dimensions.margin_16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Dimensions.projectBorders),
          border: Border.all(
            color: context.appColorScheme.borderColor,
          )),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                CachedNetworkImage(
                  imageUrl: service.icon.toPngImageUrl,
                  height: Dimensions.serviceIconSize,
                  width: Dimensions.serviceIconSize,
                  fit: BoxFit.cover,
                ),
                Dimensions.marginHorizontal_8,
                Flexible(
                  child: Text(
                    service.name,
                    maxLines: 1,
                    style: context.textTheme.titleLarge
                        ?.copyWith(color: context.appColorScheme.primaryText),
                  ),
                )
              ],
            ),
          ),
          Dimensions.marginVertical_16,
          Flexible(
            child: Text(
              service.description,
              overflow: TextOverflow.clip,
              textAlign: TextAlign.start,
              style: context.textTheme.bodyMedium
                  ?.copyWith(color: context.appColorScheme.secondaryText),
            ),
          ),
          Dimensions.marginVertical_16,
          ElevatedButton(
              onPressed: () {},
              style: AppButtonStyle(context: context).copyWith(
                padding: const WidgetStatePropertyAll(EdgeInsets.symmetric(
                    horizontal: Dimensions.margin_8, vertical: 0)),
                textStyle: WidgetStatePropertyAll(context.textTheme.labelSmall),
              ),
              child: const Text('Read more'))
        ],
      ),
    );
  }
}
