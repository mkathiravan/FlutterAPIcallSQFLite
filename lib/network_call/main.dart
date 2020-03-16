import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_task/network_call/API.dart';
import 'package:flutter_task/network_call/User.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Http App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyListScreen(),
    );
  }

}

class MyListScreen extends StatefulWidget{
  @override
  createState() => _MyListScreenState();
}

class _MyListScreenState extends State
{

  var users = new List<User>();

  _getUsers()
  {
    API.getUsers().then((response) {
      setState(() {
        Iterable list = json.decode(response.body);
        users = list.map((model) => User.fromJson(model)).toList();
      });
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getUsers();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Users List"),
      ),
      body: ListView.builder(
          itemCount: users.length,
          itemBuilder: (context, index)
      {
        return ListTile(title: Text(users[index].name));
      }),
    );
  }

}
