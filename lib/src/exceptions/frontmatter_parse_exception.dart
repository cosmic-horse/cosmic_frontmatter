/// Thrown when the frontmatter is not valid.
///
/// At the moment, the only exception is thrown when the frontmatter does not contain the delimiter.
class FrontmatterParseException implements Exception {
  final String message;

  const FrontmatterParseException(this.message);

  const FrontmatterParseException.delimiter([
    this.message = 'Frontmatter document must start with your delimiter.',
  ]);

  @override
  String toString() => message;
}
