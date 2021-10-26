import 'package:freezed_annotation/freezed_annotation.dart';

part 'frontmatter_parse_exception.freezed.dart';

@freezed
class FrontmatterParseException with _$FrontmatterParseException {
  const factory FrontmatterParseException(String message) = _FrontmatterParseException;
  const factory FrontmatterParseException.delimiter([
    @Default('Frontmatter document must start with your delimiter.') String message,
  ]) = FrontmatterParseExceptionDelimiter;

  const FrontmatterParseException._();
}
