import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui/core/widget/drawer.dart';

class NewsHeadlineView extends StatefulWidget {
  //const NewsHeadlineView({ Key? key }) : super(key: key);

  @override
  State<NewsHeadlineView> createState() => _NewsHeadlineViewState();
}

class _NewsHeadlineViewState extends State<NewsHeadlineView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("News Headline"),
      ),
      drawer:getAppDrawer(),
      body: Container(),
    );
  }
}