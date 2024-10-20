import 'dart:math';

import 'package:flutter/widgets.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:portfolio_v2/infrastructure/bootstrap/environment_vars.dart';
// import 'dart:html' as html;

extension StringExtensions on String {
  String get toPngImageUrl =>
      'assets/assets/images/png/$this.png';

  String get toJpgImageUrl =>
      'assets/assets/images/jpg/$this.jpg';

  String get toProjectImageUrl =>
      'assets/assets/images/projects/$this.png';

  String get toProjectWebPUrl =>
      'assets/assets/images/projects/$this.webp';

  String get toProjectCoverUrl =>
      'assets/assets/images/projects/covers/$this.webp';

  String get toNetworkImage =>
      'assets/assets/images/projects/$this';

  AssetImage get toPngImage => AssetImage('assets/images/png/$this.png');

  AssetImage get toJpgImage => AssetImage('assets/images/jpg/$this.jpg');

  String get toSvg => 'assets/images/svg/$this.svg';

  Color get hexToColor {
    final String hexString = replaceFirst('#', '0xff');
    return Color(int.parse(hexString));
  }

  String get toLinkedin {
    int index = max(indexOf('com/in/'),0);
    return substring(index+4);
  }

  String get toSupaBaseUrl {
    return '${EnvironmentVars.getRuntimeVariables()[EnvironmentVars.serverUrl]}/storage/v1/object/public/$this';
  }
}
