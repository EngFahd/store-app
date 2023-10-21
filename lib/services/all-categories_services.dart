import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:store_app/helper/helper.dart';

class AllCategoriedServices {
  Future<List<dynamic>> getAllCateg() async {
       List<dynamic>data =await Api().getApi(url:'https://fakestoreapi.com/products/categories');

      return data;
    
  }
}
