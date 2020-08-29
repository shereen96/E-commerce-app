//import 'package:flappy_search_bar/flappy_search_bar.dart';
import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Column(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Card(
                  elevation: 8.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  ),
                  child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            GestureDetector(
                              child: Icon(
                                Icons.search,
                                color: Colors.black54,
                              ),
                              onTap: () {},
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Search..."),
                                onSubmitted: (String place) {
                                  // if (place.isNotEmpty) {
                                  //   performSearch(place);
                                  //}
                                },
                              ),
                            ),
                          ])),
                ),
                Transform.translate(
                  offset: Offset(0.0, 0.0),
                  child: Text(
                    'Categories  ',
                    style: TextStyle(
                      fontFamily: 'Big Caslon FB',
                      fontSize: 26,
                      color: const Color(0xff000000),
                      fontWeight: FontWeight.w700,
                      height: 1.8461538461538463,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                SizedBox(
                  height: 600,
                  width: double.infinity,
                  child: mycatag(),
                )

                //  mycatag()),
              ]),
          //  mycatag()
        ],
      ),
      //)
    );
  }
}

class mycatag extends StatelessWidget {
//   final titles = [
//     'bike',
//     'boat',
//     'bike',
//     'boat',
//     'bike',
//     'boat',
//     'bike',
//     'boat',
//     'bike',
//     'boat',
//     'bike',
//     'boat',
//     'bike',
//     'boat',
//     'bike',
//     'boat',
//   ];
// //  final icons = [IconButton(icon: null, onPressed: null)];
//   final icons = [
//     // Icons.directions_bike,

//     Icons.directions_boat,
//     Icons.directions_bus,
//     Icons.directions_car,
//     Icons.directions_railway,
//     Icons.directions_run,
//     Icons.directions_subway,
//     Icons.directions_transit,
//     Icons.directions_walk,
//     Icons.directions_boat,
//     Icons.directions_bus,
//     Icons.directions_car,
//     Icons.directions_railway,
//     Icons.directions_run,
//     Icons.directions_subway,
//     Icons.directions_transit,
//     Icons.directions_walk
//   ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: <Widget>[
      //ListView.builder(
      // itemCount:
      // //titles.length,
      // itemBuilder: (context, index) {
      Column(
        children: <Widget>[
          Card(
            color: Colors.yellowAccent,
            child: ListTile(
              leading: IconButton(icon: Icon(Icons.launch), onPressed: null),
              title: Text('soup'),
            ),
          ),
          Card(
            color: Colors.yellowAccent,
            child: ListTile(
              leading:
                  IconButton(icon: Icon(Icons.free_breakfast), onPressed: null),
              title: Text('salad'),
            ),
          ),
          Card(
            color: Colors.yellowAccent,
            child: ListTile(
              leading: IconButton(icon: Icon(Icons.launch), onPressed: null),
              title: Text('meet'),
            ),
          ),
          // Card(
          //   child: ListTile(
          //     leading: IconButton(icon: Icon(Icons.ac_unit), onPressed: null),
          //     title: Text('data'),
          //   ),
          // ),
          // Card(
          //   child: ListTile(
          //     leading: IconButton(icon: Icon(Icons.ac_unit), onPressed: null),
          //     title: Text('data'),
          //   ),
          // ),
          // Card(
          //   child: ListTile(
          //     leading: IconButton(icon: Icon(Icons.ac_unit), onPressed: null),
          //     title: Text('data'),
          //   ),
          // ),
          // Card(
          //   child: ListTile(
          //     leading: IconButton(icon: Icon(Icons.ac_unit), onPressed: null),
          //     title: Text('data'),
          //   ),
          // ),
          // Card(
          //   child: ListTile(
          //     leading: IconButton(icon: Icon(Icons.ac_unit), onPressed: null),
          //     title: Text('data'),
          //   ),
          // ),
          // Card(
          //   child: ListTile(
          //     leading: IconButton(icon: Icon(Icons.ac_unit), onPressed: null),
          //     title: Text('data'),
          //   ),
          // ),
          // Card(
          //   child: ListTile(
          //     leading: IconButton(icon: Icon(Icons.ac_unit), onPressed: null),
          //     title: Text('data'),
          //   ),
          // ),
        ],
      )
    ]));
  }
}
