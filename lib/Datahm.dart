import 'package:allwidgets/DataList.dart';
import 'package:flutter/material.dart';


class hm extends StatefulWidget {
  const hm({super.key});

  @override
  State<hm> createState() => _hmState();
}

class _hmState extends State<hm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: InkWell(
          onTap: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => Datalist(),));
          },
          child: Container(
            color: Colors.cyan,
          ),
        )
    );
  }
}
