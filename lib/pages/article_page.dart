import 'package:blogs_section/models/article_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

import '../models/html_generator.dart';

class ArticlePage extends StatelessWidget {
  final ArticleModel article;
  const ArticlePage({
    super.key,
    required this.article
  });

  @override
  Widget build(BuildContext context) {

    final htmlContent = generateHtmlFromArticle(article);

    return Scaffold(
      appBar: AppBar(title: Text("Article")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Container(
              width: 400,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: Colors.indigo.shade400,
                  width: 2,
                ),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(article.mainImagePath),
                ),
              ),
            ),
            const SizedBox(height: 8),
            Text(
                article.title,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold
                )
            ),
            const SizedBox(height: 8),
            Text("By ${article.author} • ${article.readTime} read", style: TextStyle(color: Colors.grey)),
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
                backgroundColor: Colors.indigo.shade300,
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
            Divider(
              color: Theme.of(context).colorScheme.secondary
            ),
            const SizedBox(height: 8),
            Html(data: htmlContent),
          ],
        ),
      ),
    );
  }

}
