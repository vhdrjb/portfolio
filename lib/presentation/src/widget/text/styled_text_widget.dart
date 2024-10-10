import 'package:flutter/material.dart';
import 'package:portfolio_v2/domain/src/base/text/styled_text.dart';
import 'package:portfolio_v2/domain/src/base/text/text_style.dart';
import 'package:portfolio_v2/presentation/src/extensions/context_extensions.dart';

class StyledTextWidget extends StatelessWidget {
  final Iterable<StyledText> texts;
  final TextStyle? style;
  final int? maxLines;
  final TextOverflow overflow;

  const StyledTextWidget(
      {super.key,
      required this.texts,
      this.style,
      this.maxLines,
      this.overflow = TextOverflow.clip});

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = style ?? context.textTheme.bodyMedium!;

    return RichText(
      maxLines: maxLines,
      overflow: overflow,
      text: TextSpan(children: [
        ...texts.map(
          (e) {
            return switch (e.style) {
              TextStyling.normal => TextSpan(text: e.text, style: textStyle),
              TextStyling.bold => TextSpan(
                  text: e.text,
                  style: textStyle.copyWith(
                    fontWeight: FontWeight.bold,
                  )),
              TextStyling.italic => TextSpan(
                  text: e.text,
                  style: textStyle.copyWith(
                    fontStyle: FontStyle.italic,
                  )),
              TextStyling.underline => TextSpan(
                  text: e.text,
                  style: textStyle.copyWith(
                    decoration: TextDecoration.underline,
                    decorationThickness: 1,
                  )),
            };
          },
        )
      ]),
    );
  }
}
