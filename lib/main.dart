import 'package:flutter/material.dart';
import 'package:flutter_ui/feature/news_headline/view/news_headling_view.dart';
import 'package:flutter_ui/feature/search_news/view/search_news_view.dart';
import 'package:flutter_ui/pages/furnitures.dart';
import 'package:get/get.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Car Rental',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      getPages: [
        GetPage(name: "/news_headline", page:()=> NewsHeadlineView()),
        GetPage(name: "/search_news", page:()=> SearchNewsView()),
      ],
      initialRoute: "/news_headline",
    );
  }
}