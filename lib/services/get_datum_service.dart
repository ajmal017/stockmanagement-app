import 'dart:convert';
import '../models/datum_model.dart';
import 'package:http/http.dart' as http;


Future<Categories> getCategories({String token}) async{
  final url = "http://10.0.3.2:8000/api/categories";

  var response = await http.get(url,headers: {
    'Content-Type' : 'application/json',
    'Accept' : 'application/json',
    'Authorization' : 'bearer $token'
  });

  if(response.statusCode == 200){
    Categories categories = categoriesFromJson(response.body);
    return categories;
  }

  throw Exception("fiald to get data from api");

}