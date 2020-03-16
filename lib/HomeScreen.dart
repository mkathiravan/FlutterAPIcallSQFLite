import 'package:flutter/material.dart';
import 'package:flutter_task/database_task/AppDatabase.dart';
import 'package:flutter_task/network_call/main.dart';

class HomeScreen extends StatelessWidget
{
  String msg = 'Flutter Examples';
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        home: new Scaffold(
          appBar: new AppBar(
            title: new Text('Flutter Excercises'),
          ),
          body: new Center(
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Text(
                  msg,
                  softWrap: true,
                  style: new TextStyle(fontSize: 30.0, color: Colors.black),
                ),

                new RaisedButton(
                  splashColor: Colors.pinkAccent,
                  color: Colors.red,
                  child: new Text(
                    "Flutter using API Call",
                    style: new TextStyle(
                        fontSize: 20.0,
                        color: Colors.yellow,
                        ),
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp()));
                  },
                ),
                new RaisedButton(
                  splashColor: Colors.pinkAccent,
                  color: Colors.red,
                  child: new Text(
                    "Flutter SQFLite",
                    style: new TextStyle(fontSize: 20.0, color: Colors.yellow),
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => AppDatabase() ));
                  },
                ),
                new Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                ),

              ],
            ),
          ),
        ));
  }

}