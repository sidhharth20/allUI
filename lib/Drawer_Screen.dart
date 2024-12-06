import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({super.key});

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          key: _scaffoldKey,
          appBar: AppBar(
            title: Text("Lodin Screen"),
            leading: IconButton(
              onPressed: () {
                _scaffoldKey.currentState!.openDrawer();
              },
              icon: Icon(Icons.add),
            ),
          ),
          drawer: Drawer(
            child: Column(
              children: [
                UserAccountsDrawerHeader(
                  accountName: Text("Abhishek Mishra"),
                  accountEmail: Text("abhishekm978@gmail.com"),
                  currentAccountPicture: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage("assets/boy.png"), fit: BoxFit.cover),
                    ),
                  ),

                  // ClipRRect(
                  //     borderRadius: BorderRadius.circular(50),
                  //     child: Image.asset("assets/boy.png",fit: BoxFit.cover,)),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [Icon(Icons.home), Text("Home")],
                )
              ],
            ),
          ),
          body: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(left: 16,right: 16),
              child: Column(
                children: [
                  ElevatedButton(onPressed: (){
                    final snackBar = SnackBar(
                      duration: Duration(milliseconds: 100),
                      content: const Text('Yay! A SnackBar!'),
                      action: SnackBarAction(
                        label: 'Undo',
                        onPressed: () {
                          // Some code to undo the change.
                        },
                      ),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  }, child: Text("Show Sneckbar"))
                ],
              ),
            ),
          ),
          floatingActionButton: Container(
              padding: EdgeInsets.only(bottom: 20),
              child: IconButton(icon:Icon(CupertinoIcons.add_circled_solid,size: 50,color: Colors.red,),onPressed: (){},)),

        )
    );
  }
}
