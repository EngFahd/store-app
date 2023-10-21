import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:store_app/models/get_all_pro_model.dart';
import 'package:store_app/services/apdate_product.dart';
import 'package:store_app/widgites/ButtonLogIn.dart';
import 'package:store_app/widgites/CustemTextField.dart';

class UpdatePage extends StatefulWidget {
  UpdatePage({super.key});
  static String id = 'update-page';

  @override
  State<UpdatePage> createState() => _UpdatePageState();
}

class _UpdatePageState extends State<UpdatePage> {
  String? productName, description, image, price;

  // dynamic? price;

  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    ProductModel productModel =
        ModalRoute.of(context)!.settings.arguments as ProductModel;
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: const Text(
            'Update',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(12),
          child: ListView(
            children: [
              CustemTextFiled(
                OnChange: (data) {
                  productName = data;
                },
                hint: 'Product Name',
              ),
              const SizedBox(
                height: 20,
              ),
              CustemTextFiled(
                OnChange: (data) {
                  price = data;
                },
                type: TextInputType.number,
                hint: 'Pice',
              ),
              const SizedBox(
                height: 20,
              ),
              CustemTextFiled(
                OnChange: (data) {
                  description = data;
                },
                hint: 'description',
              ),
              const SizedBox(
                height: 20,
              ),
              CustemTextFiled(
                OnChange: (data) {
                  image = data;
                },
                hint: 'image',
              ),
              const SizedBox(
                height: 50,
              ),
              ButtonLogin(
                title: 'Submite',
                onTap: () async {
                  isLoading = true;
                  setState(() {});
                    await update(productModel);
                  try {
                    print("Successfully");
                  } on Exception catch (e) {
                    print(e.toString());
                  }
                  isLoading = false;
                  setState(() {});
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  Future<void> update(ProductModel productModel) async {
     await UpdateProServices().apdateProServices(
      id: productModel.id,
        titel: productName ?? productModel.titel,
        price: price ?? productModel.price,
        description: description ?? productModel.description,
        image: image ?? productModel.img,
        catgories: productModel.categories);
  }
}
