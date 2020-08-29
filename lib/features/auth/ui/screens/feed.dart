import 'package:flutter/material.dart';

class Feed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'Feed',
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.w500,
                        fontSize: 30),
                  )),
              Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.all(20),
                child: Column(
                  children: <Widget>[
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              CircleAvatar(
                                radius: 20,
                                backgroundImage:
                                    AssetImage('assets/images/main.jpg'),
                              ),
                              SizedBox(
                                height: 0,
                                width: 10,
                              ),
                              Text('Shereen')
                            ],
                          ),
                          IconButton(
                              icon: Icon(
                                Icons.favorite,
                                color: Colors.red,
                                size: 20,
                              ),
                              onPressed: null)
                        ],
                      ),
                    ),
                    Container(
                      height: 320,
                      width: 800,
                      margin: const EdgeInsets.all(2),
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
                  ],
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.all(20),
                child: Column(
                  children: <Widget>[
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              CircleAvatar(
                                radius: 20,
                                backgroundImage:
                                    AssetImage('assets/images/main.jpg'),
                              ),
                              SizedBox(
                                height: 0,
                                width: 10,
                              ),
                              Text('Remah')
                            ],
                          ),
                          IconButton(
                              icon: Icon(
                                Icons.favorite,
                                color: Colors.red,
                                size: 20,
                              ),
                              onPressed: null)
                        ],
                      ),
                    ),
                    Container(
                      height: 320,
                      width: 800,
                      margin: const EdgeInsets.all(2),
                      padding: const EdgeInsets.all(0.0),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.yellowAccent),
                        borderRadius: BorderRadius.all(Radius.circular(16.0)),
                        image: DecorationImage(
                          image: const AssetImage('assets/images/main.jpg'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.all(20),
                child: Column(
                  children: <Widget>[
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              CircleAvatar(
                                radius: 20,
                                backgroundImage:
                                    AssetImage('assets/images/main.jpg'),
                              ),
                              SizedBox(
                                height: 0,
                                width: 10,
                              ),
                              Text('Maram')
                            ],
                          ),
                          IconButton(
                              icon: Icon(
                                Icons.favorite,
                                color: Colors.red,
                                size: 20,
                              ),
                              onPressed: null)
                        ],
                      ),
                    ),
                    Container(
                      height: 320,
                      width: 800,
                      margin: const EdgeInsets.all(2),
                      padding: const EdgeInsets.all(0.0),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.yellowAccent),
                        borderRadius: BorderRadius.all(Radius.circular(16.0)),
                        image: DecorationImage(
                          image: const AssetImage('assets/images/main.jpg'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Text('')
            ],
          ),
        ]));
  }
}
