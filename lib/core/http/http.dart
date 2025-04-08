import 'dart:convert';

import 'package:http/http.dart' as http;

import '../api_constants/api_constants.dart';

class MyHttp {
  MyHttp._();

   static Future <Map<String, dynamic>> get(String endPoint)async {
  final response = await http.get(Uri.parse("${ApiConstants.baseUrl}/$endPoint"));
   return _handleResponse(response);


   }
  static Future <Map<String, dynamic>> post(String endPoint, dynamic data)async {
    final response = await http.post(Uri.parse("${ApiConstants.baseUrl}/$endPoint"),
      headers: {'Content-Type':'application/json'},
      body: json.encode(data),

    );
    return _handleResponse(response);


  }
  static Future <Map<String, dynamic>> delete(String endPoint)async {
    final response = await http.delete(Uri.parse("${ApiConstants.baseUrl}/$endPoint"),

    );
    return _handleResponse(response);


  }
  static Future <Map<String, dynamic>> put(String endPoint, dynamic data)async {
    final response = await http.put(Uri.parse("${ApiConstants.baseUrl}/$endPoint"),
      headers: {'Content-Type':'application/json'},
      body: json.encode(data),

    );
    return _handleResponse(response);


  }






   static Map<String,dynamic> _handleResponse (http.Response response ){
    if (response.statusCode==200){
      return json.decode(response.body);
    }else {
      throw Exception("Failed to load Data:${response.statusCode}");
    }

   }

}