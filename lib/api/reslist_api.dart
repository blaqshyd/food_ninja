// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:food_ninja/models/restaurant_list.dart';
// import 'package:http/http.dart' as http;

// class ResListApi {
//   static Future<List<ResList>> getResList(BuildContext context) async {
//     final assetBundle = DefaultAssetBundle.of(context);
//     final data = await assetBundle.loadString('assets/json/res.json');
//     final body = json.decode(data);

//     return body.map<ResList>(ResList.fromJson(json).toList());
//   }
// }
