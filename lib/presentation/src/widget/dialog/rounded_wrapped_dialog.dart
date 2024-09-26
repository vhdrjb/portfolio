import 'package:flutter/material.dart';
import 'package:portfolio_v2/presentation/src/extensions/context_extensions.dart';
import 'package:portfolio_v2/presentation/src/theme/dimensions.dart';

class RoundedWrappedDialog extends StatelessWidget {
  final Widget content;
  final Widget? title;
  final List<Widget>? buttons;
  const RoundedWrappedDialog({super.key,required this.content,this.title,this.buttons});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content:SizedBox(width:  context.screenSize.width/2,child: content,) ,
      title: title,
      actions: buttons,
      backgroundColor: context.appColorScheme.surface,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Dimensions.buttonBorderRadius),
      ),
    );
  }
}
