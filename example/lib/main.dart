import 'package:cosmic_frontmatter/frontmatter.dart';
import 'package:example/models/mock_frontmatter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

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

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'cosmic_frontmatter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

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
