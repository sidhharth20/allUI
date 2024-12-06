import 'package:flutter/material.dart';

class grid extends StatefulWidget {
  const grid({super.key});

  @override
  State<grid> createState() => _gridState();
}

class _gridState extends State<grid> {
  List<dynamic> items = [
    {'icon': Icons.access_time, 'msg': 'Clock','color':Colors.blue},
    {'icon': Icons.abc_outlined, 'msg': 'lattes','color':Colors.lightBlueAccent},
    {'icon': Icons.access_time_filled_sharp, 'msg': 'vnv','color':Colors.red},
    {'icon': Icons.accessibility, 'msg': 'Cl','color':Colors.yellow},
    {'icon': Icons.access_time_rounded, 'msg': 'Clk','color':Colors.grey},
    {'icon': Icons.add_chart_rounded, 'msg': 'Clccggk','color':Colors.pink},
    {'icon': Icons.add, 'msg': 'Clgg','color':Colors.green},
    {'icon': Icons.access_time, 'msg': 'Clck','color':Colors.orange},
    {'icon': Icons.access_time, 'msg': 'abc','color':Colors.deepPurple},
    {'icon': Icons.access_time, 'msg': 'bgv','color':Colors.redAccent},
    {'icon': Icons.access_time, 'msg': 'tfbf','color':Colors.greenAccent},
    {'icon': Icons.access_time, 'msg': 'sdv','color':Colors.deepPurple},
    {'icon': Icons.access_time,'msg':'yth','color':Colors.pink.shade50},
    {'icon': Icons.access_time,'msg':'mjmjn','color':Colors.greenAccent},
    {'icon': Icons.access_time,'msg':'sddf','color':Colors.white12},
    {'icon': Icons.access_time,'msg':'esdc','color':Colors.lightGreen},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Gridview demo"),
      ),
      body: GridView.builder(
        shrinkWrap: true,
        itemCount: 16,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
          childAspectRatio: 1.2,
        ),
        itemBuilder: (BuildContext context, int index) {
          return Container(
            decoration: BoxDecoration(
              color: items[index]['color'],
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            child:
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(items[index]['icon'],size: 35,),
                  Text(items[index]['msg'],style: TextStyle(fontSize: 35),),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
