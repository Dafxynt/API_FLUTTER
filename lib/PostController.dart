import 'package:get/get.dart';
import 'package:api_flutter/api_service.dart';
import 'package:api_flutter/post_model.dart';

class PostController extends GetxController {
  var isLoading = true.obs;
  var mealList = <PostModel>[].obs; // Define mealList as a list of PostModel

  @override
  void onInit() {
    fetchMeals();
    super.onInit();
  }

  void fetchMeals() async {
    try {
      isLoading(true);
      var mealsData = await ApiService().fetchMeals();
      var meals = mealsData.map((data) => PostModel.fromJson(data)).toList();
      mealList.assignAll(meals);
    } finally {
      isLoading(false);
    }
  }
}
