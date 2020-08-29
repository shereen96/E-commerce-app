import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/features/auth/ui/screens/addrecip.dart';
import 'package:food_app/features/auth/ui/screens/feed.dart';
import 'package:food_app/features/auth/ui/screens/intro.dart';
import 'package:food_app/features/auth/ui/screens/serchpage.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _page = 0;
  final First _home = First();
  final Feed _feed = Feed();
  final AddRecipe _loginPage = AddRecipe();
  final Search _search = Search();

  Widget _showpage = First();
  Widget _pagechosser(int page) {
    switch (page) {
      case 0:
        return _home;
        break;
      case 1:
        return _search;
        break;
      case 2:
        return _loginPage;
        break;
      case 3:
        return _feed;
        break;
    }
  }

  GlobalKey _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          color: Colors.yellowAccent,
          index: _page,
          key: _bottomNavigationKey,
          items: <Widget>[
            Icon(Icons.home, size: 20),
            Icon(Icons.search, size: 20),
            Icon(Icons.add_circle_outline, size: 20),
            Icon(Icons.list, size: 20),
            Icon(Icons.person, size: 20),
          ],
          onTap: (int tappedIndex) {
            setState(() {
              _showpage = _pagechosser(tappedIndex);
              // searchpage();
              //  _page = index;
            });
          },
        ),
        body: Container(
            color: Colors.white,
            // child: ListView(
            //   scrollDirection: Axis.horizontal,
            //   children: <Widget>[feed()],
            // ),

            child: Center(
              child: _showpage,
            )
            //   child: Column(
            //     children: <Widget>[
            //       Text(_page.toString(), textScaleFactor: 10.0),
            //       RaisedButton(
            //         child: Text('Go To Page of index 1'),
            //         onPressed: () {
            //           //Page change using state does the same as clicking index 1 navigation button
            //           final CurvedNavigationBarState navBarState =
            //               _bottomNavigationKey.currentState;
            //    navBarState.setPage(1);
            //         },
            //       )
            //     ],
            //   ),
            // ),
            ));
  }
}
