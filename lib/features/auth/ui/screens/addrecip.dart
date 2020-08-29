//import 'dart:html';
import 'dart:io';

import "package:flutter/material.dart";
import 'package:food_app/features/auth/providers/userproider.dart';
import 'package:food_app/features/firestore_operations/models/recipe.dart';
import 'package:image_picker/image_picker.dart';
import 'package:food_app/features/firestore_operations/repoisrore/clinte.dart';
import 'package:provider/provider.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         theme: ThemeData(primarySwatch: Colors.blue), home: LoginPage());
//   }
// }

class AddRecipe extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _State();
}

class _State extends State<AddRecipe> {
  int _value = 1;

  TextEditingController nameController = TextEditingController();
  TextEditingController intgredientController = TextEditingController();
  TextEditingController amountController = TextEditingController();
  TextEditingController stepController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    RecipeProvider provider = Provider.of<RecipeProvider>(context);
    return Scaffold(
        backgroundColor: Colors.white,
        // appBar: AppBar(
        //   title: Text('Login Screen App'),
        // ),
        body: ListView(children: <Widget>[
          //  Padding(
          //     padding: EdgeInsets.all(10),
          //child:
          Column(
            children: <Widget>[
              //ListView(

              Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'Publish',
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.w500,
                        fontSize: 30),
                  )),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                        margin: const EdgeInsets.all(0),
                        padding: const EdgeInsets.all(40.0),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0))),
                        child: IconButton(
                            icon: Icon(
                              Icons.add_a_photo,
                              color: Colors.black,
                            ),
                            onPressed: () async {
                              PickedFile pickedFile = await ImagePicker()
                                  .getImage(source: ImageSource.camera);
                              File file = File(pickedFile.path);
                              Provider.of<RecipeProvider>(context,
                                      listen: false)
                                  .uploadImage(file);
                              //   File file = File(pickedFile.path);
                              // String imageUrl =
                              //     await Client.client.uploadRecipeImage(file);
                              // if (imageUrl == null) {
                              //   print('object');
                              //   Recipe recipe = Recipe(
                              //     imageUrl: imageUrl,
                              //   );
                              // }
                            })),
                    Container(
                      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.yellowAccent,
                        border: Border.all(),
                      ),
                      child: DropdownButton(
                          value: _value,
                          items: [
                            DropdownMenuItem(
                              child: Text("breakfast"),
                              value: 1,
                            ),
                            DropdownMenuItem(
                              child: Text("lanch"),
                              value: 2,
                            ),
                            DropdownMenuItem(child: Text("denner"), value: 3),
                            // DropdownMenuItem(
                            //     child: Text("Fourth Item"), value: 4)
                          ],
                          onChanged: (value) {
                            provider.setRecipeCatagorie(value);
                            // setState(() {
                            //   _value = value;
                            // });
                          }),
                    ),
                  ],
                ),
                alignment: Alignment.topLeft,
                padding: EdgeInsets.all(10),
              ),

              Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.all(10),
                  //padding: EdgeInsets.fromLTRB(0, 0, 10, 10),
                  child: Text(
                    'Name',
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.w300,
                        fontSize: 20),
                  )),
              Container(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: TextField(
                  onChanged: (value) {
                    provider.setRecipeName(value);
                  },
                  obscureText: false,
                  controller: nameController,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(),
                    labelText: 'Name',
                  ),
                ),
              ),
              Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.all(10),
                  //padding: EdgeInsets.fromLTRB(0, 0, 10, 10),
                  child: Text(
                    'Ingredients',
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.w300,
                        fontSize: 20),
                  )),
              Container(
                  padding: EdgeInsets.all(2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      SizedBox(
                        height: 50,
                        width: 150,
                        child: TextField(
                          onChanged: (value) {
                            provider.setRecipeIngredients(value);
                            //      Ingredients(titel: value));
                          },
                          // controller: intgredientController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Ingredients',
                          ),
                        ),
                      ),
                      // SizedBox(
                      //   height: 50,
                      //   width: 150,
                      //   child: TextField(
                      //     // onChanged: (value) {
                      //     //   provider.setRecipeIngredients(
                      //     //       Ingredients(amount: value));
                      //     // },
                      //     //controller: amountController,
                      //     decoration: InputDecoration(
                      //       border: OutlineInputBorder(),
                      //       labelText: 'amount',
                      //     ),
                      //   ),
                      // ),
                    ],
                  )),
              // Container(
              //     padding: EdgeInsets.all(2),
              //     child: Row(
              //       mainAxisAlignment: MainAxisAlignment.spaceAround,
              //       children: <Widget>[
              //         SizedBox(
              //           height: 50,
              //           width: 150,
              //           child: TextField(
              //             controller: intgredientController,
              //             decoration: InputDecoration(
              //               border: OutlineInputBorder(),
              //               labelText: 'Ingredients',
              //             ),
              //           ),
              //         ),
              //         SizedBox(
              //           height: 50,
              //           width: 150,
              //           child: TextField(
              //             controller: amountController,
              //             decoration: InputDecoration(
              //               border: OutlineInputBorder(),
              //               labelText: 'amount',
              //             ),
              //           ),
              //         ),
              //       ],
              //     )),
              // Container(
              //   alignment: Alignment.topLeft,
              //   padding: EdgeInsets.all(10),
              //   child: SizedBox(
              //       height: 50,
              //       width: 250,
              //       child: Row(
              //         children: <Widget>[
              //           IconButton(icon: Icon(Icons.add), onPressed: null),
              //           Text('Add Ingredients')
              //         ],
              //       )),
              // ),

              Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.all(10),
                  //padding: EdgeInsets.fromLTRB(0, 0, 10, 10),
                  child: Text(
                    'Recip',
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.w300,
                        fontSize: 20),
                  )),
              Container(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: TextField(
                  onChanged: (value) {
                    provider.setRecipeDiscrption(value);
                  },
                  obscureText: true,
                  // controller: stepController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'step',
                  ),
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.all(10),
                child: SizedBox(
                    height: 50,
                    width: 150,
                    child: Row(
                      children: <Widget>[
                        IconButton(icon: Icon(Icons.add), onPressed: null),
                        Text('Add Step')
                      ],
                    )),
              ),

              Container(
                  height: 50,
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: RaisedButton(
                    textColor: Colors.white,
                    color: Colors.blue,
                    child: Text('Add'),
                    onPressed: () {
                      Provider.of<RecipeProvider>(context, listen: false)
                          .addNewRecipe();

                      // print(nameController.text);
                      // print(passwordController.text);
                      // PickedFile pickedFile = await ImagePicker()
                      //     .getImage(source: ImageSource.camera);
                      // File file = File(pickedFile.path);
                      // //   File file = File(pickedFile.path);
                      // String imageUrl =
                      //     await Client.client.uploadRecipeImage(file);
                      // if (imageUrl != null) {
                      // Recipe recipe = Recipe(
                      //     description: stepController.text,
                      //     //  imageUrl: imageUrl,
                      //     //   catagorie:
                      //     name: nameController.text,
                      //     ingredients: Ingredients(
                      //         titel: intgredientController.text,
                      //         amount: amountController.text));
                      // Ingredients ingredients = Ingredients(
                      //   titel: 'iljj',
                      //   amount: 'jygfu'
                      // );
                      // await Client.client.uploadRecipe(recipe);
                      // }
                    },
                  )),

              SizedBox(
                height: 10,
                width: 10,
              )

              //mainAxisAlignment: MainAxisAlignment.center,
            ],
//                  ))
            //          ],
          ),
        ]));
  }
}
