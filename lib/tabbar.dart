import 'package:allwidgets/RowColumndesign.dart';
import 'package:allwidgets/firstpage.dart';
import 'package:allwidgets/secondpage.dart';
import 'package:flutter/material.dart';

class tabbar extends StatefulWidget {
  const tabbar({super.key});

  @override
  State<tabbar> createState() => _tabbarState();
}

class _tabbarState extends State<tabbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: TabBar(
          indicatorColor: Colors.teal,
          tabs: [
            Tab(
              icon: Icon(Icons.home,color:Colors.red,),
              text: 'Home',
            ),
            Tab(
              icon: Icon(Icons.info,color: Colors.red,),
              text: 'info',
            ),
            Tab(
              icon: Icon(Icons.settings,color: Colors.red,),
              text: 'settings',
            ),
          ],
        ),
        title: Text(
          "Tabbar",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.green,
      ),
      body: TabBarView(
        children: [
          secondpage(),
          firstpage(),
          RowCollumnDesign(),
        ],
      ),
    );
  }
}
