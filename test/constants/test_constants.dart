const Map<String, dynamic> expectedMap = {
  'frontmatter': {
    'title': 'This is a test document',
    'author': 'paul-halliday',
    'excerpt': 'Learn how to use Markdown with Flutter at developer.school',
    'category': 'Flutter',
    'date': '2021-10-25'
  },
  'body': 'Here is a test document with some data\n'
      '\n'
      'Other stuff'
};

const mockFrontmatter = """---
title: This is a test document
author: paul-halliday
excerpt: Learn how to use Markdown with Flutter at developer.school
category: Flutter
date: "2021-10-25"
---""";

const mockDocument = """
---
title: This is a test document
author: paul-halliday
excerpt: Learn how to use Markdown with Flutter at developer.school
category: Flutter
date: "2021-10-25"
---

Here is a test document with some data

Other stuff
""";

const failureDocument = """
title: This is a test document
author: paul-halliday
excerpt: Learn how to use Markdown with Flutter at developer.school
category: Flutter
date: "2021-10-25"

Here is a test document with some data

Other stuff
""";
