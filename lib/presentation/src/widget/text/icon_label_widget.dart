import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio_v2/presentation/src/extensions/context_extensions.dart';
import 'package:portfolio_v2/presentation/src/theme/dimensions.dart';

import 'hoverable_text_widget.dart';

class IconLabelWidget extends StatelessWidget {
  final String value;
  final IconData? icon;
  final SvgPicture? svgIcon;
  final String? url;
  const IconLabelWidget({super.key,required this.value, this.icon, this.svgIcon,this.url});

  @override
  Widget build(BuildContext context) {
    assert(!(icon==null && svgIcon==null) ,'both icon and svgIcon can not be null');
    assert(icon == null || svgIcon == null,'can not set both svgIcon and icon');
    return Row(
      children: [
        if (icon!=null)
          Icon(icon,color: context.appColorScheme.secondaryText,),
        if (svgIcon!=null)
          svgIcon!,
        Dimensions.marginHorizontal_4,
        if(url==null)
        Text(value,style: context.textTheme.titleMedium?.copyWith(
          color: context.appColorScheme.primaryText
        ),)
        else
          HoverableTextWidget(label: value,url: url!,)
      ],
    );
  }
}
