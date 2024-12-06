import 'package:allwidgets/UrlLauncher.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class assignmentMod4 extends StatefulWidget {
  const assignmentMod4({super.key});

  Future<void> launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if(!await launchUrl(uri, mode: LaunchMode.externalApplication)){
      throw 'cannot launch $url';
    }
  }

  @override
  State<assignmentMod4> createState() => _assignmentMod4State();
}

class _assignmentMod4State extends State<assignmentMod4> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.red.shade100,child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 3,mainAxisSpacing: 3,childAspectRatio: 2), itemBuilder: (BuildContext context, int index){
          return SizedBox(
            child: Container(
              color: Colors.blue.shade200,
              child: Column(
                children: [
                  Text("Press on the link below....",style: TextStyle(color: Colors.black,fontSize: 10,fontWeight: FontWeight.w500),),
                  TextButton(onPressed: ()=> Navigator.of(context).push(MaterialPageRoute(builder: (context) => UrlLauncherExample(),),), child: Text("Information")),
                  InkWell(
                    onTap: (){
                      Navigator.pushNamed(context, '/first');
                    },
                    child: Container(
                      color: Colors.orangeAccent,
                      height: 10,width: 10,
                    ),
                  ),
                ],
              ),
            ),
          );
        }),),
      ),
    );
  }
}
