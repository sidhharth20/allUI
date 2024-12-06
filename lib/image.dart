import 'package:flutter/material.dart';

class image extends StatefulWidget {
  const image({super.key});

  @override
  State<image> createState() => _imageState();
}

class _imageState extends State<image> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Column(),
          Image(
            height:MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width/2,
            image: AssetImage("assets/one.jpg",),),
        ],
      ),
    );
  }
}
