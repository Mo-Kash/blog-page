import 'article_model.dart';

String generateHtmlFromArticle(ArticleModel article) {
  final buffer = StringBuffer();

  for (var section in article.sections) {
    buffer.writeln('<h2>${section.heading}</h2>');
    if (section.imagePath.isNotEmpty) {
      buffer.writeln('<img src="${section.imagePath}" width="100%" />');
    }

    for (var paragraph in section.paragraphs) {
      if (paragraph.title.isNotEmpty) {
        buffer.writeln('<h3>${paragraph.title}</h3>');
      }
      for (var line in paragraph.lines) {
        buffer.writeln('<p>$line</p>');
      }
    }
  }

  buffer.writeln('<h2>${article.conclusion.title}</h2><ul>');
  for (var point in article.conclusion.points) {
    buffer.writeln('<li>$point</li>');
  }
  buffer.writeln('</ul>');

  return buffer.toString();
}