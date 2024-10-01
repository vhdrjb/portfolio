import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:portfolio_v2/presentation/src/extensions/context_extensions.dart';
import 'package:portfolio_v2/presentation/src/extensions/string_extensions.dart';
import 'package:portfolio_v2/presentation/src/modules/home/components/about_me_component.dart';
import 'package:portfolio_v2/presentation/src/theme/button_style.dart';
import 'package:portfolio_v2/presentation/src/theme/dimensions.dart';
import 'package:portfolio_v2/presentation/src/widget/label/icon_label_widget.dart';

import 'highlight_component.dart';

class ProfileComponent extends StatelessWidget {
  const ProfileComponent({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint('profile build');
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
                imageUrl: 'user'.toJpgImageUrl,
              ),
            ),
          ),
          Dimensions.marginVertical_16,
          Text(
            'Vahid Rajabi',
            style: context.textTheme.headlineMedium
                ?.copyWith(color: context.appColorScheme.primaryText),
          ),
          Dimensions.marginVertical_16,
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: '+9',
                  style: context.textTheme.titleMedium
                      ?.copyWith(color: context.appColorScheme.primaryText),
                ),
                TextSpan(text: ' Years Experience',style: context.textTheme.titleMedium?.copyWith(
                  color: context.appColorScheme.secondaryText
                ))
              ],
            ),
          ),
          Dimensions.marginVertical_8,
          Text(
            'Flutter, Android & Java Developer',
            style: context.textTheme.titleMedium
                ?.copyWith(color: context.appColorScheme.secondaryText),
          ),
          Dimensions.marginVertical_16,
          ElevatedButton(onPressed: () {

          }, child: Text('Book appointment '),style: AppButtonStyle(context: context),),
          Dimensions.marginVertical_16,
          IconLabelWidget(value: 'v.rajabi.dev@gmail.com',icon: Icons.mail_outline_rounded,url: 'mailto:v.rajabi.dev@gmail.com',),
          Dimensions.marginVertical_16,
          IconLabelWidget(value: 'in/vhdrjb',svgIcon: SvgPicture.asset('linkedin'.toSvg,
          colorFilter: ColorFilter.mode(context.appColorScheme.secondaryText, BlendMode.srcIn),
          ),url: 'https://linkedin.com/in/vhdrjb',),
          Dimensions.marginVertical_16,
          const AboutMeComponent(),
          Dimensions.marginVertical_16,
          const HighlightComponent(),

        ],
      ),
    );
  }
}
