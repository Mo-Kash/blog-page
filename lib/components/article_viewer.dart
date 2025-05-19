import 'package:flutter/material.dart';
import '../models/article_model.dart';

Widget buildArticleContent(ArticleModel article) {
  return ListView(
    padding: const EdgeInsets.all(16),
    children: [
      Text(article.title,
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)
      ),
      const SizedBox(height: 8),
      Text('${article.author} • ${article.date} • ${article.readTime}',
          style: const TextStyle(fontSize: 14, color: Colors.grey)
      ),
      const SizedBox(height: 8),
      Wrap(
        spacing: 6,
        children: article.tags
            .map((tag) =>  Chip(
          label: Text(
              tag,
              textScaler: TextScaler.noScaling,
              style: TextStyle(
                  fontSize: 12,
                  fontStyle: FontStyle.italic,
                  color: Colors.white)
          ),
          padding: const EdgeInsets.symmetric(
              horizontal: 8, vertical: 0),
          backgroundColor: Colors.indigo.shade300,
          visualDensity: VisualDensity.compact,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: BorderSide(color: Colors.transparent),
          ),
          elevation: 0,
        ),
        ).toList(),
      ),
      const SizedBox(height: 16),

      Image.asset(article.mainImagePath, fit: BoxFit.cover),
      const SizedBox(height: 16),
      Divider(
          color: Colors.black
      ),
      const SizedBox(height: 24),

      // Sections
      ...article.sections.map((section) => _buildSection(section)).toList(),

      // Conclusion
      if (article.conclusion.title.isNotEmpty)
        _buildConclusion(article.conclusion),
    ],
  );
}

Widget _buildSection(ArticleSection section) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(section.heading,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)
      ),
      const SizedBox(height: 12),
      if (section.imagePath.isNotEmpty)
        Padding(
          padding: const EdgeInsets.only(bottom: 12),
          child: Image.asset(section.imagePath),
        ),
      ...section.paragraphs.map(_buildParagraphBlock).toList(),
      const SizedBox(height: 24),
    ],
  );
}


Widget _buildParagraphBlock(ParagraphBlock block) {
  if (block is TextBlock) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (block.title.isNotEmpty)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Text(block.title,
                style: const TextStyle(
                    fontSize: 16, fontWeight: FontWeight.w600)
            ),
          ),
        ...block.lines.map((line) => Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: Text(line, style: const TextStyle(fontSize: 16)
          ),
        )),
      ],
    );
  } else if (block is TableBlock) {
    return _buildTable(block);
  } else {
    return const SizedBox.shrink(); // fallback
  }
}


Widget _buildTable(TableBlock tableBlock) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 12),
    child: Table(
      border: TableBorder.all(),
      columnWidths: const {0: FlexColumnWidth()},
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      children: [
        TableRow(
          decoration: const BoxDecoration(color: Colors.grey),
          children: tableBlock.headers
              .map((header) => Padding(
            padding: const EdgeInsets.all(8),
            child: Text(header,
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white)
            ),
          ))
              .toList(),
        ),
        ...tableBlock.rows.map((row) => TableRow(
          children: row
              .map((cell) => Padding(
            padding: const EdgeInsets.all(8),
            child: Text(cell),
          ))
              .toList(),
        )),
      ],
    ),
  );
}


Widget _buildConclusion(ArticleConclusion conclusion) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(conclusion.title,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)
      ),
      const SizedBox(height: 8),
      ...conclusion.points.map(
            (point) => Padding(
          padding: const EdgeInsets.only(bottom: 6),
          child: Text('• $point', style: const TextStyle(fontSize: 16)),
        ),
      ),
      const SizedBox(height: 24),
    ],
  );
}

