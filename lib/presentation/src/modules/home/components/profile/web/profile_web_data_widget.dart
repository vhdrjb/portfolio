import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:portfolio_v2/domain/src/user/user_entity.dart';
import 'package:portfolio_v2/presentation/src/extensions/context_extensions.dart';
import 'package:portfolio_v2/presentation/src/extensions/datetime_extensions.dart';
import 'package:portfolio_v2/presentation/src/extensions/string_extensions.dart';
import 'package:portfolio_v2/presentation/src/modules/home/components/about_me_component.dart';
import 'package:portfolio_v2/presentation/src/modules/home/components/highlight_component.dart';
import 'package:portfolio_v2/presentation/src/widget/text/icon_label_widget.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../theme/button_style.dart';
import '../../../../../theme/dimensions.dart';
import '../../../../../widget/text/styled_text_widget.dart';

class ProfileWebDataWidget extends StatelessWidget {
  final UserEntity user;

  const ProfileWebDataWidget({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Dimensions.profileWebWidth,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            constraints: const BoxConstraints(
              maxWidth: 300,
              maxHeight: 300,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(500),
              child: CachedNetworkImage(
                progressIndicatorBuilder: (context, url, progress) {
                  return LoadingAnimationWidget.twoRotatingArc(
                      color: context.appColorScheme.loadingColor,
                      size: Dimensions.loadingSize);
                },
                imageUrl: user.avatarUrl.toSupaBaseUrl,
              ),
            ),
          ),
          Dimensions.marginVertical_16,
          Text(
            'Vahid Rajabi',
            style: context.textTheme.headlineMedium
                ?.copyWith(color: context.appColorScheme.primaryText),
          ),
          if (user.startedFrom != null)
            Padding(
              padding: const EdgeInsets.only(top: Dimensions.margin_16),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: user.startedFrom!.yearsToNow.toString(),
                      style: context.textTheme.titleMedium
                          ?.copyWith(color: context.appColorScheme.primaryText),
                    ),
                    TextSpan(
                        text: ' Years Experience',
                        style: context.textTheme.titleMedium?.copyWith(
                            color: context.appColorScheme.secondaryText))
                  ],
                ),
              ),
            ),
          if (user.headline != null)
            Padding(
              padding: const EdgeInsets.only(top: Dimensions.margin_16),
              child: StyledTextWidget(
                style: context.textTheme.titleMedium?.copyWith(
                  color: context.appColorScheme.secondaryText
                ),
                texts: user.headline!,
              ),
            ),
          if (user.bookingUrl != null)
            Padding(
              padding: const EdgeInsets.only(top: Dimensions.margin_16),
              child: ElevatedButton(
                onPressed: () {
                   launchUrl(Uri.parse(user.bookingUrl!));
                },
                style: AppButtonStyle(context: context),
                child: const Text('Book appointment '),
              ),
            ),
          if (user.email != null)
            Padding(
              padding: const EdgeInsets.only(top: Dimensions.margin_16),
              child: IconLabelWidget(
                value: user.email!,
                icon: Icons.mail_outline_rounded,
                url: 'mailto:${user.email}',
              ),
            ),
          if (user.linkedin != null)
            Padding(
              padding: const EdgeInsets.only(top: Dimensions.margin_16),
              child: IconLabelWidget(
                value: user.linkedin!.toLinkedin,
                svgIcon: SvgPicture.asset(
                  'linkedin'.toSvg,
                  colorFilter: ColorFilter.mode(
                      context.appColorScheme.secondaryText, BlendMode.srcIn),
                ),
                url: user.linkedin!,
              ),
            ),
          if (user.about != null)
            Padding(
              padding: const EdgeInsets.only(top: Dimensions.margin_16),
              child: AboutMeComponent(
                about: user.about!,
              ),
            ),
          const HighlightComponent()
        ],
      ),
    );
  }
}
