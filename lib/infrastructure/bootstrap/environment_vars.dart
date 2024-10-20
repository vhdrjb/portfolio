
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'environment.dart';

interface class EnvironmentVars{
  static const String annoKey = 'Anno-Key_key';
  static const String serverUrl = 'Server-Url_key';
 static Map<String,dynamic> getRuntimeVariables() {

    Map<String,dynamic> vars = {};

    assert(
    dotenv.env['ANNO_KEY'] !=null || Environment.annoKey.isNotEmpty, 'variables not set'
    );

    assert(
    dotenv.env['SERVER_URL'] !=null || Environment.serverUrl.isNotEmpty, 'variables not set'
    );

    vars[annoKey] = dotenv.env['ANNO_KEY']  ?? Environment.annoKey;
    vars[serverUrl] = dotenv.env['SERVER_URL']  ?? Environment.serverUrl;

    return vars;

  }
}