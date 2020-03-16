import 'dart:async';
import 'package:http/http.dart' as http;

const baseurl = "https://jsonplaceholder.typicode.com";

class API
{
  static Future getUsers()
  {
    var url = baseurl + "/users";
    return http.get(url);
  }
}