import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  List <String> fruit = ["Aakash","Aman","Dev","Vishal"];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Dissmisible"),backgroundColor: Colors.red,),
        body: ListView.builder(itemCount: fruit.length,itemBuilder: (context,index){
          final fruits = fruit[index];
          return Dismissible(
              onDismissed:(direction){
                if(direction == DismissDirection.endToStart){
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(fruit[index]),backgroundColor: Colors.amber,));
                }else{
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(fruit[index]),backgroundColor: Colors.green,));
                }
              } ,
              key: Key(fruits),background:Container(color: Colors.red,),secondaryBackground: Container(color: Colors.deepPurple,), child:Card(child: ListTile(title: Text(fruits[index]),)) );
        },),
      ),
    );
  }
}