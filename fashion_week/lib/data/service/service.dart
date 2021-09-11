import 'dart:convert';

import 'package:fashion_week/model/fashion_model.dart';
import 'package:fashion_week/model/fashion_model_item.dart';
import 'package:flutter/services.dart' show rootBundle;

class Services {
  static Future<List<FashionModelItem>> getFashionList() async {
    try {
      var json = await rootBundle.loadString("assets/data/models.json");
      var fashionList = FashionModel.fromJson(jsonDecode(json)).models!;
      return fashionList;
    } catch (e) {
      print(e);
      return [];
    }
  }
}
