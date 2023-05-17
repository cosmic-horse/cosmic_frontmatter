## cosmic_frontmatter

`cosmic_frontmatter` is a package that provides a simple way to parse the frontmatter of a markdown file.

## Getting started

To get started, you need to install the package by adding `cosmic_frontmatter` to your `pubspec.yaml`:

```yaml
dependencies:
  flutter:
    sdk: flutter

  cosmic_frontmatter: ^1.0.3
```

## Usage

`cosmic_frontmatter` exports a `parseFrontmatter` function that takes a string (your markdown document) and a `builder` function. The `builder` function is called with the parsed frontmatter as a map.

This allows you to get typed frontmatter. Here's an example that uses [json_serializable](https://developer.school/tutorials/flutter-using-json_serializable-to-serialise-dart-classes) and [freezed](https://developer.school/how-to-use-freezed-with-flutter) to generate a `MockFrontmatter` class:

```dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'mock_frontmatter.freezed.dart';
part 'mock_frontmatter.g.dart';

@freezed
class MockFrontmatter with _$MockFrontmatter {
  const factory MockFrontmatter({
    required String title,
    required String author,
    required String excerpt,
    required String category,
    required String date,
  }) = _MockFrontmatter;

  const MockFrontmatter._();

  factory MockFrontmatter.fromJson(Map<String, dynamic> json) => _$MockFrontmatterFromJson(json);
}
```

With the `MockFrontmatter` in place, you can parse the frontmatter of a markdown file:

```dart
const mockDocument = """
---
title: This is a test document
author: paul-halliday
excerpt: Learn how to use Markdown with Flutter at developer.school
category: Flutter
date: "2021-10-25"
---

You can learn how to use Markdown with Flutter at [developer.school](https://developer.school/tutorials/how-to-display-markdown-in-flutter).
""";

final mockFrontmatter = parseFrontmatter(
  content: mockDocument,
  frontmatterBuilder: (map) {
    // Do anything you want with the `map`:

    return MockFrontmatter.fromJson(map);
});
```

This can then be used in your app however you want. Here's an example which merely displays the frontmatter on the screen, along-side the markdown body:

```dart
class _MyHomePageState extends State<MyHomePage> {
  late Document<MockFrontmatter> document;

  @override
  void initState() {
    super.initState();

    document = parseFrontmatter(
      content: mockDocument,
      frontmatterBuilder: (map) => MockFrontmatter.fromJson(map),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(document.frontmatter.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ListTile(
                contentPadding: EdgeInsets.zero,
                title: const Text('Title'),
                subtitle: Text(document.frontmatter.title),
              ),
              ListTile(
                contentPadding: EdgeInsets.zero,
                title: const Text('Author'),
                subtitle: Text(document.frontmatter.author),
              ),
              ListTile(
                contentPadding: EdgeInsets.zero,
                title: const Text('Excerpt'),
                subtitle: Text(document.frontmatter.excerpt),
              ),
              ListTile(
                contentPadding: EdgeInsets.zero,
                title: const Text('Category'),
                subtitle: Text(document.frontmatter.category),
              ),
              ListTile(
                contentPadding: EdgeInsets.zero,
                title: const Text('Date'),
                subtitle: Text(document.frontmatter.date),
              ),
              Text(
                'Content',
                style: Theme.of(context).textTheme.headline6,
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: MarkdownBody(
                  data: document.body,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
```

`MarkdownBody` is a widget that displays markdown. It comes from the [flutter_markdown](https://pub.dev/packages/flutter_markdown) package. You can find more information about it [here](https://developer.school/tutorials/how-to-display-markdown-in-flutter).