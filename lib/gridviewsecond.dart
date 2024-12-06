import 'package:allwidgets/Listview_Screen.dart';
import 'package:flutter/material.dart';

class gridviewpage extends StatefulWidget {
  const gridviewpage({super.key});

  @override
  State<gridviewpage> createState() => _gridviewpageState();
}

class _gridviewpageState extends State<gridviewpage> {
  List<dynamic> item = [
    {
      'img': 'assets/n2.jpg',
      'msg2':'553 Gislason Radial',
      'msg1': 'Boston Hotel',
      'msg3': '100 Reviews',
      'msg4': 'Rs.125',
    },
    {
      'img':'assets/n3.jpeg',
      'msg2':'623 Catherine Port',
      'msg1':'Seatle Hotel',
      'msg3':'99 Reviews',
      'msg4':'Rs.199',
    },
    {
      'img':'assets/n2.jpg',
      'msg2':'303 natasha manors',
      'msg1':'Brisbane Hotel',
      'msg3':'89 Reviews',
      'msg4':'Rs.149',
    },
    {
      'img':'assets/n3.jpeg',
      'msg1':'Chengdu hotel',
      'msg2':'19 jennie route',
      'msg3':'234 Reviews',
      'msg4':'Rs.299',
    },
    {
      'img':'assets/n2.jpg',
      'msg1':'Adora Hotel',
      'msg2':'Gust Rock apt.725',
      'msg3':'175 Reviews',
      'msg4':'Rs.399',
    },
    {
      'img':'assets/n3.jpeg',
      'msg1':'Cindy Hotel',
      'msg2':'7384 cotilde ishle',
      'msg3':'23 Reviews',
      'msg4': 'Rs.49',
    },
    {
      'img':'assets/one.jpg',
    },
    {
      'img':'assets/scanner.png',
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Text("SIDHHARTH"),
      ),
      appBar: AppBar(title: Text("Gridview",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w500,color: Colors.white),),backgroundColor: Colors.blue,centerTitle:true,),
      body: GridView.builder(
          itemCount: 6,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
            childAspectRatio: 0.7,
          ), itemBuilder:(BuildContext context,int index) {
        return Padding(
          padding: EdgeInsets.all(2),
          child: InkWell(
            onTap:(){
              Navigator.push(context, MaterialPageRoute(builder: (context) => ListviweScreen()),);
            },
            child: Material(
              elevation: 5,
              borderRadius: BorderRadius.all(Radius.circular(5)),
              child:  Container(
                // decoration: BoxDecoration(
                //   border: Border.all(color: Colors.blue,width: 1)
                // ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 140,
                      width: MediaQuery.of(context).size.width,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(item[index]['img'],fit: BoxFit.cover,)),
                    ),
                    Row(
                      children: [
                        Icon(Icons.location_on,color: Colors.red,size: 18,),
                        Text(item[index]['msg2'],style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.grey),),
                      ],
                    ),
                    Text(item[index]['msg1'],style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w800),),
                    Row(
                      children: [
                        Icon(Icons.star,size: 15,),
                        Icon(Icons.star,size: 15,),
                        Icon(Icons.star,size: 15,),
                        Icon(Icons.star,size: 15,),
                        Icon(Icons.star,size: 1,),
                        Icon(Icons.star_border,size: 15,),
                        Text(item[index]['msg3'],),
                      ],
                    ),
                    Text(item[index]['msg4'],style: TextStyle(color: Colors.red,fontWeight: FontWeight.w900,fontSize: 25),)
                  ],
                ) ,
              ),
            ),
          ),
        );
      }
      ),
    );
  }
}

