import 'package:flutter/material.dart';
import 'package:flutter_task/database_task/database_helper.dart';
void main() => runApp(AppDatabase());

class AppDatabase extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'SQFlite Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }


}

class MyHomePage extends StatelessWidget{

  final dbHelper = DatabaseHelper.instance;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('sqflite'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
                child: Text('insert', style: TextStyle(fontSize: 20),),
                onPressed: () {_insert();},),
            RaisedButton(
                child: Text('query', style: TextStyle(fontSize: 20),),
                onPressed: () {_query();},),
            RaisedButton(
                child: Text('update',style: TextStyle(fontSize: 20),),
                onPressed: () {_update();},),
            RaisedButton(
                child: Text('delete',style: TextStyle(fontSize: 20),),
                onPressed: () {_delete();},),
          ],
        ),
      ),
    );
  }

  void _insert() async {
    Map<String,dynamic> row = {DatabaseHelper.columnName : 'Kathir',DatabaseHelper.columnAge: 31};
    final id = await dbHelper.insert(row);
    print('inserted row Id: $id');
  }

  void _query() async{
    final allRows = await dbHelper.queryAllRows();
    print('query all rows:');
    allRows.forEach((row) => print(row));
  }

  void _update() async{

    //row to update
    Map<String,dynamic> row = {DatabaseHelper.columnId :1, DatabaseHelper.columnName:'Dinesh', DatabaseHelper.columnAge: 31};
    final rowsAffected = await dbHelper.update(row);
    print('updated $rowsAffected row(s)');

  }

  void _delete() async
  {

    // Assuming that the number of rows is the id for the last row.
    final id = await dbHelper.queryRowCount();
    final rowsDeleted = await dbHelper.delete(id);
    print('deleted $rowsDeleted row(s): row $id');
  }



}