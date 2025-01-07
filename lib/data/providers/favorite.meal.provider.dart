import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foodie/data/models/meal.dart';

class FavoriteMealsNotifier extends StateNotifier<List<Meal>> {
  FavoriteMealsNotifier() : super([]);

  void toggleFavoriteMeals(Meal meal) {
    if (state.contains(meal)) {
      state =
          state.where((m) => m != meal).toList(); // Remove if already favorite
    } else {
      state = [...state, meal]; // Add to favorites
    }
  }

  bool isFavorite(Meal meal) => state.contains(meal);
}

final favoriteMealsProvider =
    StateNotifierProvider<FavoriteMealsNotifier, List<Meal>>(
  (ref) => FavoriteMealsNotifier(),
);
