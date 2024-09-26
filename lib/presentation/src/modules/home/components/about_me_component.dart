import 'package:flutter/material.dart';
import 'package:portfolio_v2/presentation/src/extensions/context_extensions.dart';
import 'package:portfolio_v2/presentation/src/theme/dimensions.dart';
import 'package:portfolio_v2/presentation/src/widget/dialog/rounded_wrapped_dialog.dart';
import 'package:portfolio_v2/presentation/src/widget/label/hoverable_text_widget.dart';

import '../../../theme/button_style.dart';

class AboutMeComponent extends StatelessWidget {
  const AboutMeComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Dimensions.marginVertical_16,
        Divider(
          color: context.appColorScheme.dividerColor,
        ),
        Text(
          'About Me',
          style: context.textTheme.titleMedium
              ?.copyWith(color: context.appColorScheme.primaryText),
        ),
        Dimensions.marginVertical_8,
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              child: Text(
                '''
        As a Senior Software Engineer with over 10 years of experience in mobile development, including freelance and contract work, I excel in creating clean, maintainable, and scalable code. I am passionate about problem-solving and stay updated with emerging technologies to enhance project outcomes. My expertise in refactoring and architecting using clean architecture ensures efficient and maintainable code, while my passion for mentoring junior developers fosters a culture of knowledge sharing within the team. I thrive on creating innovative user interactions based on feedback, helping teams deliver exceptional products that enhance user satisfaction.
        '''
                    .trimLeft(),
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: context.textTheme.bodyMedium
                    ?.copyWith(color: context.appColorScheme.secondaryText),
              ),
            ),
            HoverableTextWidget(
              label: 'more',
              style: context.textTheme.titleSmall,
              onPress: () {
                showDialog(
                  context: context,
                  barrierDismissible: true,
                  barrierColor:
                      context.appColorScheme.headerColor.withOpacity(0.8),
                  builder: (context) {
                    return RoundedWrappedDialog(
                        buttons: [
                          TextButton(
                            onPressed: () {
                              Navigator.maybePop(context);
                            },
                            child: Text('OK'),
                            style: AppAccentTextButtonStyle(context: context),
                          )
                        ],
                        content: Text(
                          '''
                          As a Senior Software Engineer with over 10 years of experience in mobile development, including freelance and contract work, I excel in creating clean, maintainable, and scalable code. I am passionate about problem-solving and stay updated with emerging technologies to enhance project outcomes. My expertise in refactoring and architecting using clean architecture ensures efficient and maintainable code, while my passion for mentoring junior developers fosters a culture of knowledge sharing within the team. I thrive on creating innovative user interactions based on feedback, helping teams deliver exceptional products that enhance user satisfaction.
                  '''
                              .trimLeft(),
                          style: context.textTheme.bodyMedium?.copyWith(
                              color: context.appColorScheme.primaryText),
                        ));
                  },
                );
              },
            )
          ],
        ),
      ],
    );
  }
}
