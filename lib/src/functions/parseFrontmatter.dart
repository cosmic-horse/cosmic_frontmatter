import 'package:cosmic_frontmatter/src/exceptions/frontmatter_parse_exception.dart';
import 'package:cosmic_frontmatter/src/model/document.dart';
import 'package:yaml/yaml.dart';

Document<T> parseFrontmatter<T>({
  required String content,
  required T Function(Map<String, dynamic>) frontmatterBuilder,
  String delimiter = '---',
}) {
  final trimmedContent = content.trimLeft();

  if (!trimmedContent.startsWith(delimiter)) {
    throw const FrontmatterParseException.delimiter();
  }

  final delimiterEnd = trimmedContent.indexOf("\n$delimiter");
  final frontmatter = trimmedContent.substring(delimiter.length, delimiterEnd);
  final body = trimmedContent.substring(delimiterEnd + delimiter.length + 1).trim();

  final yamlAsMap = Map<String, dynamic>.from(loadYaml(frontmatter));
  final model = frontmatterBuilder(yamlAsMap);

  return Document(body: body, frontmatter: model);
}
