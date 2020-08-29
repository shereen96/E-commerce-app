// class Catagorie {
//   String catagorie;
//   Recipe recipe;

//   Catagorie({this.catagorie, this.recipe});
//   toJson() {
//     Map<String, dynamic> map = {};
//     map['recipe'] = this.recipe.toJson();
//     return map;
//   }
// }

import 'package:cloud_firestore/cloud_firestore.dart';

class Recipe {
  String documantid;
  String imageUrl;
  String catagorie;
  String name;
  String description;
  String ingredients;
  //Ingredients ingredients;

  Recipe(
      {this.documantid,
      this.imageUrl,
      this.description,
      this.name,
      this.ingredients,
      this.catagorie});

  Recipe.fromDocumentSnapshot(DocumentSnapshot documentSnapshot) {
    this.documantid = documentSnapshot.documentID;
    this.imageUrl = documentSnapshot.data['imageUrl'];
    this.name = documentSnapshot.data['name'];
    this.description = documentSnapshot.data['description'];
    this.catagorie = documentSnapshot.data['catagorie'];
    this.ingredients = documentSnapshot.data['ingredients'];
  }

  // Recipe.fromJson(Map map) {
  //   this.imageUrl = map['imageUrl'] ?? '';
  //   this.name = map['title'] ?? '';
  //   this.description = map['description'] ?? '';
  //   this.ingredients = Ingredients.fromJson(map['ingredients']);
  // }
  toJson() {
    Map<String, dynamic> map = {};
    map['description'] = this.description;
    map['imageUrl'] = this.imageUrl;
    map['name'] = this.name;
    map['catagorie'] = this.catagorie;
    map['ingredients'] = this.ingredients;
    //.toJson();
    return map;
  }
}

// class Ingredients {
//   String titel;
//   String amount;
//   Ingredients({this.titel, this.amount});
//   Ingredients.fromJson(Map map) {
//     this.titel = map['titel'];
//     this.amount = map['amount'];
//   }
//   toJson() {
//     return {'titel': this.titel, 'amount': this.amount};
//   }
// }
