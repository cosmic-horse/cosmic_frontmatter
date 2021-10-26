import 'package:cosmic_frontmatter/src/exceptions/frontmatter_parse_exception.dart';
import 'package:cosmic_frontmatter/src/functions/parseFrontmatter.dart';
import 'package:cosmic_frontmatter/src/model/mock_frontmatter.dart';
import 'package:flutter_test/flutter_test.dart';

import 'constants/test_constants.dart';

void main() {
  test('Parser should parse frontmatter', () {
    final mockFrontmatter = parseFrontmatter(
        content: mockDocument,
        frontmatterBuilder: (map) {
          // Do anything you want with the `map`:

          return MockFrontmatter.fromJson(map);
        });

    expect(mockFrontmatter.frontmatter.author, expectedMap['frontmatter']['author']);
  });
  test('Parser should not parse bad frontmatter', () {
    expect(
        () => parseFrontmatter(
            content: failureDocument,
            frontmatterBuilder: (map) {
              return MockFrontmatter.fromJson(map);
            }),
        throwsA(isA<FrontmatterParseException>()));
  });
}
