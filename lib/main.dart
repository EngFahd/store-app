import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:store_app/pages/home_page.dart';
import 'package:store_app/pages/update_page.dart';

void main() {
  runApp(const StorApp());
}

class StorApp extends StatelessWidget {
  const StorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomePage.id: (context) => const HomePage(),
        UpdatePage.id: (context) =>  UpdatePage()
      },
      initialRoute: HomePage.id,
    );
  }
}

          // http.Response res = await http.post(
          //   Uri.parse('https://fakestoreapi.com/products'),
          //   body: {
          //     'title': 'test product',
          //     'price': '13.5',
          //     'description': 'lorem ipsum set',
          //     'image': ' https://i.pravatar.cc',
          //     'category': "electronic"
          //   },
          //   headers: {
          //     'Accpet': 'appliation/json',
          //     'Content-Type': 'application/x-www-form-urlencoded'
          //   },
          // );
          // print(jsonDecode(res.body));