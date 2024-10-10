import 'package:flutter_test/flutter_test.dart';
import 'package:portfolio_v2/presentation/src/extensions/string_extensions.dart';

main() {
  test('test string to linkedin', () {
    const String linkedInUrl = 'https://linkedin.com/in/vhdrjb';
    expect(linkedInUrl.toLinkedin, 'in/vhdrjb');
  },);
}