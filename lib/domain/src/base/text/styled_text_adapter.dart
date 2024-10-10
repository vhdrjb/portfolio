import 'package:portfolio_v2/domain/src/base/text/styled_text.dart';
import 'package:portfolio_v2/domain/src/base/text/text_style.dart';

class StyledTextAdapter {
  const StyledTextAdapter();
  Iterable<StyledText> convert(String text) {
    List<StyledText> styledText = List.empty(growable: true);
    const String regexPattern = r'([^<]+)|(<(b|i|u)>.*?<\/\3>)';
    final RegExp regExp = RegExp(regexPattern, multiLine: true);
    Iterator<RegExpMatch> matches = regExp.allMatches(text).iterator;

    while (matches.moveNext()) {
      String match = matches.current.group(0) ?? '';
      if (match.trim().isEmpty) {
        continue;
      }
      if (_isBold(match)) {
        styledText.add(StyledText(text: _removeTag(match), style: TextStyling.bold));
      }else if (_isItalic(match)) {
        styledText.add(StyledText(text: _removeTag(match), style: TextStyling.italic));
      }else if (_isUnderline(match)) {
        styledText.add(StyledText(text: _removeTag(match), style: TextStyling.underline));
      }else {
        styledText.add(StyledText(text: match, style: TextStyling.normal));
      }
    }

    return styledText;
  }

  String _removeTag(String text) {
    return text.substring(3,text.length-4);
  }

  bool _isBold(String text) {
    return text.contains('<b>') && text.contains('</b>');
  }

  bool _isItalic(String text) {
    return text.contains('<i>') && text.contains('</i>');
  }
  bool _isUnderline(String text) {
    return text.contains('<u>') && text.contains('</u>');
  }
}
