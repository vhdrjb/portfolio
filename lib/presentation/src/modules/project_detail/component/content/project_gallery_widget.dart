import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:portfolio_v2/infrastructure/router/provider/home_route_provider.dart';
import 'package:portfolio_v2/presentation/src/extensions/context_extensions.dart';
import 'package:portfolio_v2/presentation/src/extensions/string_extensions.dart';

import '../../../../theme/dimensions.dart';

class ProjectGalleryWidget extends StatelessWidget {
  final List<String>? images;

  const ProjectGalleryWidget({super.key, required this.images});

  @override
  Widget build(BuildContext context) {
    if (images == null) {
      return Center(
        child: Text(
          'no image found',
          style: context.textTheme.titleMedium?.copyWith(
            color: context.appColorScheme.primaryText,
          ),
        ),
      );
    }
    return GridView.builder(
        itemCount: images!.length,
        itemBuilder: (context, index) => GestureDetector(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(Dimensions.projectBorders),
                child: CachedNetworkImage(
                  imageUrl: images![index].toSupaBaseUrl,
                  progressIndicatorBuilder: (context, url, progress) {
                    return Center(
                      child: LoadingAnimationWidget.twoRotatingArc(
                          color: context.appColorScheme.loadingColor,
                          size: Dimensions.galleryLoadingSize),
                    );
                  },
                ),
              ),
              onTap: () {
                _showFullscreenImage(context, images![index].toSupaBaseUrl);
              },
            ),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            mainAxisExtent: Dimensions.galleryHeight,
            crossAxisSpacing: Dimensions.margin_8,
            mainAxisSpacing: Dimensions.margin_8,
            maxCrossAxisExtent: Dimensions.galleryMaxWidth));
  }

  void _showFullscreenImage(BuildContext context, String imagePath) {
    showGeneralDialog(
      context: context,
      barrierDismissible: true,
      barrierLabel: MaterialLocalizations.of(context).modalBarrierDismissLabel,
      barrierColor: Colors.black54,
      // Background color
      transitionDuration: const Duration(milliseconds: 200),
      pageBuilder: (BuildContext context, Animation animation,
          Animation secondaryAnimation) {
        return Center(
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Material(
              color: Colors.transparent,
              child: CachedNetworkImage(
                imageUrl: imagePath,
              ),
            ),
          ),
        );
      },
    );
  }
}
