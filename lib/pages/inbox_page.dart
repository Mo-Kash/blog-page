import 'package:blogs_section/models/inbox_search_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../components/article_thumbnail.dart';

class InboxPage extends StatelessWidget {
  const InboxPage({super.key});

  @override
  Widget build(BuildContext context) {
    final InboxSearchController controller = Get.put(InboxSearchController());

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        scrolledUnderElevation: 0,
        title: const Text("Inbox"),
        centerTitle: true,
        elevation: 0,
      ),
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: SearchBar(
              controller: controller.searchController,
              onChanged: controller.handleSearch,
              hintText: "Search",
              backgroundColor: MaterialStateProperty.all(
                Theme.of(context).colorScheme.tertiaryContainer,
              ),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              ),
              leading: const Icon(Icons.search, color: Colors.grey),
              elevation: MaterialStateProperty.all(0),
              hintStyle: MaterialStateProperty.all(
                TextStyle(color: Colors.grey.shade600),
              ),
              padding: MaterialStateProperty.all(
                const EdgeInsets.symmetric(horizontal: 16),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: Obx(() => ListView.builder(
              itemCount: controller.filteredArticles.length,
              itemBuilder: (context, index) {
                final article = controller.filteredArticles[index];
                return ArticleThumbnail(article: article);
              },
            )),
          ),
        ],
      ),
    );
  }
}
