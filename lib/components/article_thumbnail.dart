import 'package:flutter/material.dart';
import '../pages/article_page.dart';
import '../models/article_model.dart';

class ArticleThumbnail extends StatelessWidget {
  final ArticleModel article;

  const ArticleThumbnail({super.key, required this.article});

  void goToArticle(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ArticlePage(article: article),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => goToArticle(context),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("${article.date} • ${article.readTime}",
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                          fontSize: 12)),
                  const SizedBox(height: 4),
                  Text(
                      article.title,
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.inversePrimary,
                          fontSize: 16,
                          fontWeight: FontWeight.bold)),
                  const SizedBox(height: 4),
                  Text(
                      article.preview,
                      style:
                      TextStyle(color: Theme.of(context).colorScheme.primary),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis),
                  const SizedBox(height: 8),
                  Wrap(
                    spacing: 6,
                    children: article.tags
                        .map((tag) =>  Chip(
                        label: Text(tag,
                            style: TextStyle(
                                fontSize: 12,
                                fontStyle: FontStyle.italic,
                                color: Theme.of(context)
                                    .colorScheme
                                    .surface)),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 0),
                        backgroundColor: Colors.indigo.shade400,
                        visualDensity: VisualDensity.compact,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                          side: BorderSide(color: Colors.transparent),
                        ),
                        elevation: 0,
                      ),
                    )
                        .toList(),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 12),
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(article.mainImagePath,
                  width: 80, height: 120, fit: BoxFit.cover),
            ),
          ],
        ),
      ),
    );
  }
}
