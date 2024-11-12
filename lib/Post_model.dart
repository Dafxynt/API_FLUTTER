class PostModel {
  final String strMeal;
  final String strMealThumb;
  final String idMeal;

  PostModel({
    required this.strMeal,
    required this.strMealThumb,
    required this.idMeal,
  });

  // Factory method to create an instance of Meal from JSON
  factory PostModel.fromJson(Map<String, dynamic> json) {
    return PostModel(
      strMeal: json["strMeal"],
      strMealThumb: json["strMealThumb"],
      idMeal: json["idMeal"],
    );
  }
}
