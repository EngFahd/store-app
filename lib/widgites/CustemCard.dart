import 'package:flutter/material.dart';
import 'package:store_app/models/get_all_pro_model.dart';
import 'package:store_app/pages/update_page.dart';

class card extends StatelessWidget {
  const card({
    super.key,
    required this.proModel,
  });
  final ProductModel proModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, UpdatePage.id,arguments: proModel);
      },
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  blurRadius: 40,
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 0,
                  offset: const Offset(10, 10))
            ]),
            height: 120,
            width: 220,
            child: Card(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      proModel.titel,
                      maxLines: 1,
                      style: const TextStyle(color: Colors.grey),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(r"$" "${proModel.price}"),
                        const Spacer(),
                        const Icon(
                          Icons.favorite,
                          color: Colors.red,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
              bottom: 75,
              right: 15,
              child: Image.network(
                proModel.img,
                height: 85,
                width: 85,
              ))
        ],
      ),
    );
  }
}
