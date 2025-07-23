import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/search_controller.dart' as my;
import 'package:url_launcher/url_launcher.dart';

class SearchView extends StatelessWidget {
  final my.SearchController searchCtrl = Get.put(my.SearchController());
  final TextEditingController queryController = TextEditingController();

  SearchView({super.key});

  void _launchURL(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      Get.snackbar("Error", "Could not launch URL");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Google Search")),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: queryController,
                    decoration: InputDecoration(
                      labelText: "Search term...",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(width: 8),
                ElevatedButton(
                  child: Icon(Icons.search),
                  onPressed: () => searchCtrl.search(queryController.text),
                ),
              ],
            ),
          ),
          Obx(
            () => Expanded(
              child: ListView.builder(
                itemCount: searchCtrl.results.length,
                itemBuilder: (context, index) {
                  final item = searchCtrl.results[index];
                  return Card(
                    margin: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    child: ListTile(
                      title: Text(item["title"] ?? 'No title'),
                      subtitle: Text(item["link"] ?? ''),
                      trailing: Icon(Icons.open_in_new),
                      onTap: () => _launchURL(item["link"]),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
