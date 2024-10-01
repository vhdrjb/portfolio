import 'dart:async';

import 'package:flutter/material.dart';
import 'package:portfolio_v2/presentation/src/extensions/context_extensions.dart';
import 'package:portfolio_v2/presentation/src/theme/dimensions.dart';

class BlinkingLabelWidget extends StatefulWidget {
  final String label;
  final TextStyle? textStyle;
  final double? dimensions;

  const BlinkingLabelWidget(
      {super.key, required this.label, this.textStyle, this.dimensions});

  @override
  State<BlinkingLabelWidget> createState() => _BlinkingLabelWidgetState();
}

class _BlinkingLabelWidgetState extends State<BlinkingLabelWidget>
    with TickerProviderStateMixin {
  late Color startColor;
  late Color endColor;
  late Timer timer;
  late bool start;
  late double _dimension;

  @override
  void initState() {
    super.initState();
    start = false;
    _dimension = widget.dimensions ?? Dimensions.defaultBlinkSize;
    timer = Timer.periodic(
      const Duration(seconds: 2),
      (timer) {
        setState(() {
          start = !start;
        });
      },
    );
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    startColor = context.appColorScheme.highlightColor;
    endColor = context.appColorScheme.highlightColor.withOpacity(0.3);
    return AnimatedDefaultTextStyle(
      duration: const Duration(milliseconds: 500),
      style: (widget.textStyle ?? context.textTheme.titleSmall!).copyWith(
        color: start ? startColor: endColor
      ),
      child: FittedBox(child: Text(widget.label)),
    );
  }
}
