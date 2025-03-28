/// Representation of a Markdown document with frontmatter.
class Document<T> {
  final T frontmatter;
  final String body;

  const Document({required this.frontmatter, required this.body});

  factory Document.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) {
    return Document(
      frontmatter: fromJsonT(json['frontmatter']),
      body: json['body'] as String,
    );
  }

  Map<String, dynamic> toJson(Object Function(T value) toJsonT) {
    return {
      'frontmatter': toJsonT(frontmatter),
      'body': body,
    };
  }

  @override
  int get hashCode => Object.hash(
        frontmatter.hashCode,
        body,
      );

  @override
  bool operator ==(Object other) {
    return other is Document<T> && other.body == body && other.frontmatter.toString() == frontmatter.toString();
  }
}
