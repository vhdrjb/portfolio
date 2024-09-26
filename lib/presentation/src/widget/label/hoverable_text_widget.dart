import 'package:flutter/material.dart';
import 'package:portfolio_v2/presentation/src/extensions/context_extensions.dart';
import 'package:url_launcher/url_launcher.dart';

class HoverableTextWidget extends StatefulWidget {
  final String label;
  final String? url;
  final VoidCallback? onPress;
  final TextStyle? style;

  const HoverableTextWidget(
      {super.key, required this.label, this.url, this.onPress,this.style});

  @override
  State<HoverableTextWidget> createState() => _HoverableTextWidgetState();
}

class _HoverableTextWidgetState extends State<HoverableTextWidget> {
  late bool _isHovered = false;

  Future<void> _launchUrl(String url) async {
    await launchUrl(Uri.parse(url));
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          _isHovered = true;
        });
      },
      onExit: (_) {
        setState(() {
          _isHovered = false;
        });
      },
      child: GestureDetector(
        onTap: () {
          if (widget.url!=null) {
            _launchUrl(widget.url!);
          }else if (widget.onPress != null) {
            widget.onPress!.call();
          }
        },
        child: Text(
          widget.label,
          style: (widget.style ??context.textTheme.titleMedium)?.copyWith(
            color:
                _isHovered ? Colors.blue : context.appColorScheme.primaryText,
            decoration:
                _isHovered ? TextDecoration.underline : TextDecoration.none,
          ),
        ),
      ),
    );
  }
}
