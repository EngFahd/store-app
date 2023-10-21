import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:store_app/helper/helper.dart';
import 'package:store_app/models/get_all_pro_model.dart';

class GetAllCategoriesService {
  Future<List<dynamic>> getAllCategories({required categoryName}) async {
    List<dynamic> data = await Api().getApi(
        url:
            'https://fakestoreapi.com/products/category/$categoryName'); //jsonDecode

    List<ProductModel> allCategoriesModel = [];
    for (var i = 0; i < data.length; i++) {
      allCategoriesModel.add(ProductModel.fromJson(data[i]));
    }
    return allCategoriesModel;
  }
}
