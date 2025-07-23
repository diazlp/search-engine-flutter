import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class SearchController extends GetxController {
  RxList results = [].obs;

  void search(String query) async {
    if (query.isEmpty) return;
    final url = Uri.parse(
      'https://www.googleapis.com/customsearch/v1?q=$query&key=AIzaSyBYnvcGckKg-ijHIbf1vF98-RucT2mEkic&cx=2040c609676664786',
    );
    final res = await http.get(url);
    final data = jsonDecode(res.body);
    results.value = data['items'] ?? [];
  }
}
