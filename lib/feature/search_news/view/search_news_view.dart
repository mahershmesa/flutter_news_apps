import 'package:flutter/material.dart';
import 'package:flutter_ui/core/widget/drawer.dart';

class SearchNewsView extends StatelessWidget {
  //const SearchNewsView({ Key? key }) :/// super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Search News"),
      ),
      drawer:getAppDrawer(),
      body: Container(),
    );
  }
}