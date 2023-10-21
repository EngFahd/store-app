import 'dart:convert';

import 'package:store_app/helper/helper.dart';
import 'package:store_app/models/get_all_pro_model.dart';

class UpdateProServices {
  Future<dynamic> apdateProServices(
      {required String titel,
      required int id,
      required String price,
      required String description,
      required String image,
      required String catgories}) async {
    Map<String, dynamic> data = await Api().putApi(
      url: 'https://fakestoreapi.com/products/1',
      body: {
        'title': titel,
        'price': price,
        'description': description,
        'image': image,
        'category': catgories
      },
    );
    return ProductModel.fromJson(data);
  }
}
