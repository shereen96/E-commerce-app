import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:food_app/features/firestore_operations/models/recipe.dart';
import 'package:food_app/features/firestore_operations/repoisrore/admin.dart';
import 'package:food_app/features/firestore_operations/repoisrore/clinte.dart';

class RecipeProvider extends ChangeNotifier {
  List<Recipe> allRecipe = [];
  String recipeName;
  String recipeDiscrption;
  String recipeImageUrl;
  String recipeIngredients;
  String recipeCatagorie;

  setRecipeName(String name) {
    this.recipeName = name;
    notifyListeners();
  }

  setRecipeDiscrption(String discrption) {
    this.recipeDiscrption = discrption;
    notifyListeners();
  }

  setRecipeIngredients(String ingredients) {
    this.recipeIngredients = ingredients;
    notifyListeners();
  }

  setRecipeCatagorie(String catagorie) {
    this.recipeCatagorie = catagorie;
    notifyListeners();
  }

  uploadImage(File file) async {
    String url = await Client.client.uploadImage(file);
    this.recipeImageUrl = url;
    notifyListeners();
  }

  addNewRecipe() async {
    // String url = await Client.client.uploadRecipeImage(file);

    Recipe recipe = Recipe(
      name: this.recipeName,
      description: this.recipeDiscrption,
      catagorie: this.recipeCatagorie,
      imageUrl: this.recipeImageUrl,
      ingredients: this.recipeIngredients,
    );
    String recipeId = await Client.client.uploadRecipe(recipe);
    assert(recipeId != null);
    //getAllRecipe();
  }

  // getAllRecipe() async {
  //   allRecipe = await Admin.admin.getAllRecipe();
  //   notifyListeners();
  // }

  updateRecipe(Recipe recipe) async {
    await Client.client.updateRecipe(recipe);
    // getAllRecipe();
  }

  deleteRecipe(String documantid) async {
    await Client.client.deleteRecipe(documantid);
    //getAllRecipe();
  }
}
