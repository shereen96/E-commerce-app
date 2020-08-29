import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:food_app/features/firestore_operations/models/recipe.dart';
import 'package:food_app/features/firestore_operations/repoisrore/clinte.dart';

class Admin {
  /// check the user type
  Admin._();
  static final Admin admin = Admin._();

  // addNewRecipe(Recipe recipe, File imageFile) async {
  //   try {
  //     String url = await Client.client.uploadRecipeImage(imageFile);
  //     recipe.imageUrl = url;
  //     String id = await Client.client.uploadRecipe(recipe);
  //   } catch (erorr) {
  //     print(erorr);
  //   }
  // }

  // Future<List<Recipe>> getAllRecipe() async {
  //   List<DocumentSnapshot> document = await Client.client.getAllRecipe();
  //   List<Recipe> recipe =
  //       document.map((e) => Recipe.fromDocumentSnapshot(e)).toList();
  //   return recipe;
  // }
}
