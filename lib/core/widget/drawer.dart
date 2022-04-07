import 'package:flutter/material.dart';

getAppDrawer(){
  return  Drawer(
        child: ListView(
          children: [
            ListTile(
          title: Text('News Headline'),
        onTap: (){

        },
        leading: Icon(Icons.contact_page_outlined),
      ),

      ListTile(
          title: Text('Search News'),
        onTap: (){

        },
        leading: Icon(Icons.search),
      ),
          ],
        ),
        ); 
}