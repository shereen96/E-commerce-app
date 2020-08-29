import 'package:flutter/material.dart';

class First extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                height: 320,
                width: 400,
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(0.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.yellowAccent),
                  borderRadius: BorderRadius.all(Radius.circular(16.0)),
                  image: DecorationImage(
                    image: const AssetImage('assets/images/mann.jpg'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.all(10),
                  //padding: EdgeInsets.fromLTRB(0, 0, 10, 10),
                  child: Text(
                    'Breakfast',
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.w300,
                        fontSize: 20),
                  )),
              new Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.yellowAccent),
                ),
                height: 150.0,
                child: new ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return new GestureDetector(
                      child: new Card(
                          elevation: 5.0,
                          child: Column(
                            children: <Widget>[
                              new Container(
                                height: MediaQuery.of(context).size.width / 3,
                                width: MediaQuery.of(context).size.width / 3,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(16.0)),
                                  image: DecorationImage(
                                    image: const AssetImage(
                                        'assets/images/main.jpg'),
                                    fit: BoxFit.fill,
                                  ),
                                ),

                                //new Text('Item $index'),
                              ),
                              Text('breakfast')
                            ],
                          )),
                      onTap: () {
                        showGeneralDialog(
                            context: context,
                            barrierDismissible: true,
                            barrierLabel: MaterialLocalizations.of(context)
                                .modalBarrierDismissLabel,
                            barrierColor: Colors.black45,
                            transitionDuration:
                                const Duration(milliseconds: 200),
                            pageBuilder: (BuildContext buildContext,
                                Animation animation,
                                Animation secondaryAnimation) {
                              return Container(
                                  child: Column(children: <Widget>[
                                Container(
                                  // height: 300,
                                  // width: 150,
                                  width: MediaQuery.of(context).size.width - 10,
                                  height:
                                      MediaQuery.of(context).size.height - 80,
                                  padding: EdgeInsets.all(20),
                                  color: Colors.white,
                                  //  child: CompleteTasks(),
                                ),
                                Container(
                                    width:
                                        MediaQuery.of(context).size.width - 10,
                                    // height:
                                    //     MediaQuery.of(context).size.height - 80,
                                    //     padding: EdgeInsets.all(20),
                                    color: Colors.white,
                                    child: RaisedButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: Text(
                                        "Ok",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      color: const Color(0xFF1BC0C5),
                                    ))
                              ]));
                            });
                        // }),

                        // print(123);
                      },
                    );
                  },
                ),
              ),
              Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.all(10),
                  //padding: EdgeInsets.fromLTRB(0, 0, 10, 10),
                  child: Text(
                    'Launch',
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.w300,
                        fontSize: 20),
                  )),
              new Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.yellowAccent),
                ),
                height: 150.0,
                child: new ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return new GestureDetector(
                      child: new Card(
                        elevation: 5.0,
                        child: Column(children: <Widget>[
                          new Container(
                            height: MediaQuery.of(context).size.width / 3,
                            width: MediaQuery.of(context).size.width / 3,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.yellowAccent),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(16.0)),
                              image: DecorationImage(
                                image:
                                    const AssetImage('assets/images/main.jpg'),
                                fit: BoxFit.fill,
                              ),
                            ),

                            //new Text('Item $index'),
                          ),
                          Text('Launch')
                        ]),
                      ),
                      onTap: () {
                        print(123);
                      },
                    );
                  },
                ),
              ),
              Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.all(10),
                  //padding: EdgeInsets.fromLTRB(0, 0, 10, 10),
                  child: Text(
                    'Dinner',
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.w300,
                        fontSize: 20),
                  )),
              new Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.yellowAccent),
                ),
                height: 150.0,
                child: new ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return new GestureDetector(
                      child: new Card(
                          elevation: 5.0,
                          child: Column(
                            children: <Widget>[
                              new Container(
                                height: MediaQuery.of(context).size.width / 3,
                                width: MediaQuery.of(context).size.width / 3,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(16.0)),
                                  image: DecorationImage(
                                    image: const AssetImage(
                                        'assets/images/main.jpg'),
                                    fit: BoxFit.fill,
                                  ),
                                ),

                                //new Text('Item $index'),
                              ),
                              Text('Dinner')
                            ],
                          )),
                      onTap: () {
                        print(123);
                      },
                    );
                  },
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
