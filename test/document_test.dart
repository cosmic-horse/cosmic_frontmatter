import 'package:cosmic_frontmatter/src/functions/parseFrontmatter.dart';
import 'package:cosmic_frontmatter/src/model/document.dart';
import 'package:cosmic_frontmatter/src/model/mock_frontmatter.dart';
import 'package:flutter_test/flutter_test.dart';

import 'constants/test_constants.dart';

void main() {
  test('Document can be parsed to json', () {
    final data = parseFrontmatter(
        content: mockDocument,
        frontmatterBuilder: (map) {
          return MockFrontmatter.fromJson(map);
        });

    expect(data.toJson((value) => value.toJson()), expectedMap);
  });
  test('Document can be parsed from json', () {
    final data =
        Document<MockFrontmatter>.fromJson(expectedMap, (d) => MockFrontmatter.fromJson((d as Map<String, dynamic>)));

    expect(data.frontmatter.toJson(), expectedMap['frontmatter']);
    expect(data.body, expectedMap['body']);
  });
}
