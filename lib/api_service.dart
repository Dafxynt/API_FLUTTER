import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  final String baseUrl = 'https://www.themealdb.com/api/json/v1/1';

  Future<List<Map<String, dynamic>>> fetchMeals() async {
    final response = await http.get(Uri.parse('$baseUrl/filter.php?c=Seafood'));

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      return List<Map<String, dynamic>>.from(data["meals"]);
    } else {
      throw Exception('Failed to load meals');
    }
  }
}
