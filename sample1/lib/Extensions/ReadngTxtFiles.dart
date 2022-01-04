import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Future<String> loadAsset() async {
  return await rootBundle.loadString('assets/121Script.txt');
}

Future<String> loadAssetContext(BuildContext context) async {
  return await DefaultAssetBundle.of(context).loadString('assets/my_text.txt');
}