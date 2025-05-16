class ArticleModel {
  final String title;
  final String date;
  final String author;
  final String readTime;
  final String mainImagePath;
  final String preview;
  final List<String> tags;
  final List<ArticleSection> sections;
  final ArticleConclusion conclusion;

  ArticleModel({
    required this.title,
    required this.date,
    required this.author,
    required this.readTime,
    required this.mainImagePath,
    required this.preview,
    required this.tags,
    required this.sections,
    required this.conclusion,
  });
}

class ArticleSection {
  final String heading;
  final String imagePath;
  final List<ParagraphBlock> paragraphs;

  ArticleSection({
    required this.heading,
    this.imagePath = '',
    required this.paragraphs,
  });
}

class ParagraphBlock {
  final String title;
  final List<String> lines;

  ParagraphBlock({
    this.title = '',
    required this.lines,
  });
}

class ArticleConclusion {
  final String title;
  final List<String> points;

  ArticleConclusion({
    required this.title,
    required this.points,
  });
}