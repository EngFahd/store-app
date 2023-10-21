import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Api {
  // get Api
  Future<dynamic> getApi({required String url, @required String? token}) async {
    Map<String, dynamic> headers = {};
    if (token != null) {
      headers.addAll({'Authorization': "Bearer $token"});
    }
    http.Response res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      return jsonDecode(res.body);
    } else {
      throw Exception('ther is an error: ${res.statusCode}');
    }
  }

  // post Api
  Future<dynamic> postApi(
      {required String url,
      @required dynamic body,
      @required String? token}) async {
    Map<String, String> headers = {};
    // if we have a token
    if (token != null) {
      headers.addAll({'Authorization': "Bearer $token"});
    }
    http.Response res =
        await http.post(Uri.parse(url), body: body, headers: headers);

    if (res.statusCode == 200) {
      return jsonDecode(res.body);
    } else {
      throw Exception(
          'ther is an error: ${res.statusCode} the body = ${jsonDecode(res.body)}');
    }
  }

  // put Api
  Future<dynamic> putApi({
    required String url,
    @required dynamic body,
    @required String? token,
  }) async {
    Map<String, String> headers = {
      'Content-Type': 'application/x-www-form-urlencoded'
    };
    // if we have a token
    if (token != null) {
      headers.addAll({'Authorization': "Bearer $token"});
    }
    print('bodey   =$body      =? url => $url ');

    http.Response res =
        await http.post(Uri.parse(url), body: body, headers: headers);

    if (res.statusCode == 200) {
      print(jsonDecode(res.body));
      return jsonDecode(res.body);
    } else {
      throw Exception(
          'ther is an error: ${res.statusCode} the body = ${jsonDecode(res.body)}');
    }
  }
}
