class MockFrontmatter {
  final String title;
  final String author;
  final String excerpt;
  final String category;
  final String date;

  const MockFrontmatter({
    required this.title,
    required this.author,
    required this.excerpt,
    required this.category,
    required this.date,
  });

  factory MockFrontmatter.fromJson(Map<String, dynamic> json) {
    return MockFrontmatter(
      title: json['title'] as String,
      author: json['author'] as String,
      excerpt: json['excerpt'] as String,
      category: json['category'] as String,
      date: json['date'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'author': author,
      'excerpt': excerpt,
      'category': category,
      'date': date,
    };
  }

  @override
  int get hashCode => Object.hash(
        title,
        author,
        excerpt,
        category,
        date,
      );

  @override
  bool operator ==(Object other) {
    return other is MockFrontmatter &&
        other.title == title &&
        other.author == author &&
        other.excerpt == excerpt &&
        other.category == category &&
        other.date == date;
  }
}
