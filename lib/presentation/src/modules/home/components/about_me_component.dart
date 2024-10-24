import 'package:flutter/material.dart';
import 'package:portfolio_v2/domain/src/base/text/styled_text.dart';
import 'package:portfolio_v2/presentation/src/extensions/context_extensions.dart';
import 'package:portfolio_v2/presentation/src/theme/dimensions.dart';
import 'package:portfolio_v2/presentation/src/widget/dialog/rounded_wrapped_dialog.dart';
import 'package:portfolio_v2/presentation/src/widget/text/styled_text_widget.dart';

import '../../../theme/button_style.dart';
import '../../../widget/text/hoverable_text_widget.dart';

class AboutMeComponent extends StatelessWidget {
  final Iterable<StyledText> about;

  const AboutMeComponent({super.key, required this.about});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
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
              child: StyledTextWidget(
                texts: about,
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
                          style: AppAccentTextButtonStyle(context: context),
                          child: const Text('OK'),
                        )
                      ],
                      content: StyledTextWidget(
                        texts: about,
                        style: context.textTheme.bodyMedium?.copyWith(
                            color: context.appColorScheme.primaryText),
                      ),
                    );
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

// user/user_profile/user.jpg