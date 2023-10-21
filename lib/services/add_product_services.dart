import 'dart:convert';

import 'package:store_app/helper/helper.dart';
import 'package:store_app/models/get_all_pro_model.dart';

class AddProServices {
  Future<dynamic> addProServices({
    required String titel,
    required String price,
    required String description,
    required String image,
    required String caatgories,
  }) async {
    Map<String, dynamic> data = await Api().postApi(
      url: "https://fakestoreapi.com/products",
      body: {
        'title': titel,
        'price': price,
        'description': description,
        'image': image,
        'category': caatgories
      },
    );
    return ProductModel.fromJson(data);
  }
}
