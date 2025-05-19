import 'package:blogs_section/models/stored_articles.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'article_model.dart';

class InboxSearchController extends GetxController{
  final searchController = TextEditingController();
  final RxList<ArticleModel> filteredArticles = StoredArticles.articles.obs;

  void handleSearch(String query) {
    final lowerQuery = query.toLowerCase();
    final results = StoredArticles.articles.where((article) {
      return article.title.toLowerCase().contains(lowerQuery);
    }).toList();
    filteredArticles.assignAll(results);
  }

  @override
  void onClose() {
    searchController.dispose();
    super.onClose();
  }
}