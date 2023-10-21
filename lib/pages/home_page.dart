import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:store_app/models/get_all_pro_model.dart';
import 'package:store_app/services/get_all_products_services.dart';
import 'package:store_app/widgites/CustemCard.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static String id = "home-page";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        actions: [
          IconButton(
            icon: const Icon(FontAwesomeIcons.cartPlus),
            onPressed: () {},
          )
        ],
        centerTitle: true,
        title: const Text('New Trend'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 100, right: 16, left: 16),
        child: FutureBuilder(
          future: GetAllProServices().get_all_pro_models(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List<ProductModel> listProduct = snapshot.data!;
              return GridView.builder(
                physics:const BouncingScrollPhysics(),
                clipBehavior: Clip.none,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1.5,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 80),
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  return card(
                    proModel: listProduct[index],
                  );
                },
              );
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    );
  }
}
