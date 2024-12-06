import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gradient_icon/gradient_icon.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class Assignmentmod6 extends StatefulWidget {
  const Assignmentmod6({super.key});

  @override
  State<Assignmentmod6> createState() => _Assignmentmod6State();
}

class _Assignmentmod6State extends State<Assignmentmod6> {
  final List<dynamic> imglist = [
    'assets/Rectangle.png',
    'assets/Rectangle.png',
    'assets/Rectangle.png'
  ];
  final List<Map<dynamic,dynamic>> categoryitemimg = [
  {'im':'assets/Rectangle 101.png','txt':'Cosmatics'},{'im':'assets/Rectangle 102.png','txt':'Crafts'},{'im':'assets/Rectangle 103.png','txt':'Candy'},{'im':'assets/Rectangle 104.png','txt':'Toy'}
  ];
  final ScrollController _controllerOne = ScrollController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: CircleAvatar(),
          title: GradientText(
            colors: [Colors.green, Colors.lightGreen],
            "Aurora",
            style: TextStyle(
              fontSize: 56,
              fontWeight: FontWeight.w900,
              fontFamily:
                  'ShadowsIntoLight', // Ensure this is correctly defined
            ),
          ),
          actions: [
            GradientIcon(
                icon: Icons.heart_broken,
                size: 56,
                gradient: LinearGradient(
                    colors: [Colors.green, Colors.lightGreen],
                    begin: Alignment.topRight,
                    end: Alignment.topLeft)),
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  SizedBox(
                    width: 280,
                    height: 45,
                    child: TextFormField(
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        focusColor: Colors.white,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(color: Colors.white)),
                        hintText: "Search",
                        hintStyle: TextStyle(color: Colors.green, fontSize: 21),
                        suffixIcon: Icon(
                          Icons.camera_enhance_sharp,
                          color: Colors.grey,
                        ),
                        prefixIcon: (Icon(
                          Icons.search,
                          color: Colors.grey,
                        )),
                      ),
                      validator: (text) {
                        if (text == null || text == "") {
                          return "Please Enter Name";
                        }
                        return null;
                      },
                    ),
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  Icon(
                    Icons.mic_none_outlined,
                    size: 40,
                    color: Colors.grey,
                  )
                ],
              ),
            ),
            CarouselSlider(
                options: CarouselOptions(disableCenter: true),
                items: imglist
                    .map(
                      (items) => Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Image.asset(items.toString()),
                      ),
                    )
                    .toList()),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 0.5),
              child: Text(
                "Categories",
                style: TextStyle(
                    color: Colors.lightGreen,
                    fontSize: 25,
                    fontWeight: FontWeight.w800),
              ),
            ),
            ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,itemBuilder: (BuildContext context, int index){
              return Container(
                child: Column(
                  children: [
                    Image.asset(categoryitemimg[index]['im'].toString()),
                    SizedBox(height:2,),
                    Text(categoryitemimg[index]['txt'].toString()),
                  ],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
              );
            },itemCount: categoryitemimg.length,)
          ],
        ),
      ),
    );
  }
}
