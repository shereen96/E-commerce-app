import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'dart:io';

import 'package:food_app/features/firestore_operations/models/recipe.dart';

class Client {
  /// check the user type
  Client._();
  static final Client client = Client._();
  FirebaseStorage firebaseStorage = FirebaseStorage.instance;
  Firestore firestore = Firestore.instance;

  Future<String> uploadImage(File file) async {
    try {
      String fileName = file.path.split('/').last;
      String recipeFolderPath = 'RecipeImages/$fileName';
      // DateTime dateTime = DateTime.now();
      StorageTaskSnapshot snapshot = await firebaseStorage
          .ref()
          .child(recipeFolderPath)
          //  .child('$imagesFolder/$dateTime.jpg')
          .putFile(file)
          .onComplete;
      String url = await snapshot.ref.getDownloadURL();
      return url;
    } catch (error) {
      print(error);
    }
  }

//   // deleteImage(String imageUrl) async {
//   //   try {
//   //     await firebaseStorage.ref().child('$imagesFolder/$imageUrl').delete();
//   //   } catch (error) {
//   //     print(error);
//   //   }
//   // }

  //Future<String>
  uploadRecipe(Recipe recipe) async {
    try {
      DocumentReference documentReference =
          await firestore.collection('Recipe').add(recipe.toJson());
      assert(documentReference.documentID != null);
      return documentReference.documentID;
    } catch (error) {
      print(error);
    }
  }

  // Future<List<DocumentSnapshot>> getAllRecipe() async {
  //   try {
  //     QuerySnapshot querySnapshot =
  //         await firestore.collection('Recipes').getDocuments();
  //     return querySnapshot.documents;
  //   } catch (error) {
  //     print(error);
  //   }
  // }

//   insertNewProductToCart(Order order) async {
//     firestore.collection('Cart').add(order.toJson());
//   }

  updateRecipe(Recipe recipe) async {
    try {
      firestore
          .collection('Recipe')
          .document(recipe.documantid)
          .setData(recipe.toJson());
    } catch (error) {
      print(error);
    }
  }

  deleteRecipe(String documantid) async {
    try {
      firestore.collection('Recipe').document(documantid).delete();
    } catch (error) {
      print(error);
    }
  }
}
