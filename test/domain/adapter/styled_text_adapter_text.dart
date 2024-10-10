import 'package:flutter_test/flutter_test.dart';
import 'package:portfolio_v2/domain/src/base/text/styled_text.dart';
import 'package:portfolio_v2/domain/src/base/text/styled_text_adapter.dart';
import 'package:portfolio_v2/domain/src/base/text/text_style.dart';

void main() {
  test(
    'styled text adapter text',
    () {
      const text = 'Welcome <b>bold</b> and <i>italic</i> and <u>underline</u> text';
      StyledTextAdapter adapter = StyledTextAdapter();
      final List<StyledText> result = adapter.convert(text).toList();
      expect(result.length, 7);
      // welcome
      expect(result[0].text, 'Welcome ');
      expect(result[0].style, TextStyling.normal);
      // bold
      expect(result[1].text, 'bold');
      expect(result[1].style, TextStyling.bold);
      // and
      expect(result[2].text, ' and ');
      expect(result[2].style, TextStyling.normal);

      // italic
      expect(result[3].text, 'italic');
      expect(result[3].style, TextStyling.italic);

      // and
      expect(result[4].text, ' and ');
      expect(result[4].style, TextStyling.normal);

      // underline
      expect(result[5].text, 'underline');
      expect(result[5].style, TextStyling.underline);

      // text
      expect(result[6].text, ' text');
      expect(result[6].style, TextStyling.normal);
    },
  );
}
