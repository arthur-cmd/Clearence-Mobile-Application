import 'dart:convert';
import 'package:sky_engine/_http/http.dart';
//import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart';

class Network{
  final String _url = 'http://localhost:8000/api/v1';
  //if you are using android studio emulator, change localhost to 10.0.2.2
  var token;

  _getToken() async {
    
    SharedPreferences localStorage = await SharedPreferences.getInstance();
  //token = jsonDecode(localStorage.getString('token'))['token'];
  // token = jsonDecode(localStorage.getString('token'))['token'];
  }
  
  authData(data, apiUrl) async {
    var fullUrl = _url + apiUrl;
    //return await http.post(
        //fullUrl,
       // body: jsonEncode(data),
       // headers: _setHeaders()
    //);
  }

  getData(apiUrl) async {
    var fullUrl = _url + apiUrl;
    await _getToken();
  // return await http.get(
     //   fullUrl,
       // headers: _setHeaders()
    //);
  }

  _setHeaders() => {
    'Content-type' : 'application/json',
    'Accept' : 'application/json',
    'Authorization' : 'Bearer $token'
  };

}