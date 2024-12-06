import 'package:allwidgets/RowColumndesign.dart';
import 'package:allwidgets/textfield.dart';
import 'package:allwidgets/textfield2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Drawer_Screen.dart';

class BottomNavigationScreen extends StatefulWidget {
  final int _selectedIndex;

  const BottomNavigationScreen(this._selectedIndex);

  @override
  _BottomNavigationScreenState createState() =>
      _BottomNavigationScreenState(_selectedIndex);
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen>
    with SingleTickerProviderStateMixin {
  int _selectedIndex = 1;
  AnimationController? _controller;

  DateTime pre_backpress = DateTime.now();

  final List<Widget> _widgetOptions = <Widget>[
    // LoginScreen(),
    textfield(),
    DrawerScreen(),
    textfield2(),
    RowCollumnDesign()
  ];

  List<dynamic> BottomList = [
    {"Selected": "assets/home.png"},
    {"Selected": "assets/heart.png"},
    {"Selected": "assets/grocery-store.png"},
    {"Selected": "assets/user.png"},
  ];

  _BottomNavigationScreenState(this._selectedIndex);

  bool select = false;

  bool select1 = false;

  bool select2 = false;

  bool select3 = false;

  bool select4 = false;

  @override
  void initState() {
    _controller = AnimationController(vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    DateTime timeBackPressed = DateTime.now();

    return WillPopScope(
      onWillPop: () async {
        final timegap = DateTime.now().difference(pre_backpress);
        final cantExit = timegap >= Duration(seconds: 2);
        pre_backpress = DateTime.now();
        if (cantExit) {
          //show snackbar
          final snack = SnackBar(
            content: Text('Press Back button again to Exit'),
            duration: Duration(seconds: 2),
          );
          ScaffoldMessenger.of(context).showSnackBar(snack);
          return false;
        } else {
          return true;
        }
      },
      child: Scaffold(
          backgroundColor: Colors.white,
          extendBody: true,
          bottomNavigationBar: SafeArea(
            child: Container(
              color: Colors.transparent,
              height: 70,
              padding: EdgeInsets.only(bottom: 0.0),
              alignment: Alignment.bottomCenter,
              child: Stack(
                children: [
                  Positioned(
                      left: 0,
                      right: 0,
                      bottom: 0,
                      height: 50,
                      child: Container(
                        color: Colors.white,
                      )),
                  Positioned(
                    left: 0,
                    right: 0,
                    top: 0,
                    bottom: 0,
                    child: Container(
                      color: Colors.transparent,
                      child: GridView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisSpacing: 5,
                            mainAxisSpacing: 5,
                            childAspectRatio: 1 / 0.60,
                            crossAxisCount: 4),
                        shrinkWrap: true,
                        itemCount: _widgetOptions.length,
                        itemBuilder: (BuildContext context, int index) {
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                _selectedIndex = index;
                              });
                            },
                            child: Container(
                              // color: Colors.green,

                              height: 50,
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                // color: Colors.red,
                                child: Image.asset(
                                  BottomList[index]["Selected"].toString(),
                                  height: 25,
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          body: _widgetOptions.elementAt(_selectedIndex)),
    );
  }
}
