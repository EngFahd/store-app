import 'dart:convert';

import 'package:store_app/helper/helper.dart';
import 'package:store_app/models/get_all_pro_model.dart';
import 'package:http/http.dart' as http;

class GetAllProServices {
  Future<List<ProductModel>> get_all_pro_models() async {
    List<dynamic> data =
        await Api().getApi(url: 'https://fakestoreapi.com/products');
    List<ProductModel> allProModelsList = [];
    for (int i = 0; i < data.length; i++) {
      allProModelsList.add(ProductModel.fromJson(data[i]));
    }
    return allProModelsList;
  }
}
