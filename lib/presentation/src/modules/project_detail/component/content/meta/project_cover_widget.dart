import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:portfolio_v2/presentation/src/extensions/context_extensions.dart';
import 'package:portfolio_v2/presentation/src/extensions/string_extensions.dart';

import '../../../../../theme/dimensions.dart';

class ProjectCoverWidget extends StatelessWidget {
  final String projectCover;

  const ProjectCoverWidget({super.key, required this.projectCover});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 1 / 1,
          child: CachedNetworkImage(
            imageUrl: projectCover.toSupaBaseUrl,
            progressIndicatorBuilder: (context, url, progress) {
              return LoadingAnimationWidget.twoRotatingArc(
                  color: context.appColorScheme.loadingColor,
                  size: Dimensions.loadingSize);
            },
          ),
        ),
        Divider(color: context.appColorScheme.dividerColor,thickness: Dimensions.dividerHeight,)
      ],
    );
  }
}
