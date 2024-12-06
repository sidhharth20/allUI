import 'package:flutter/material.dart';

class Model_BottomSheet_Screen extends StatefulWidget {
  const Model_BottomSheet_Screen({super.key});

  @override
  State<Model_BottomSheet_Screen> createState() => _Model_BottomSheet_ScreenState();
}

class _Model_BottomSheet_ScreenState extends State<Model_BottomSheet_Screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            ElevatedButton(onPressed: (){
              showModalBottomSheet<void>(
                backgroundColor: Colors.red,
                context: context,
                builder: (BuildContext context) {
                  return SizedBox(
                    height: 300,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          const Text('Modal BottomSheet'),
                          ElevatedButton(
                            child: const Text('Close BottomSheet'),
                            onPressed: () => Navigator.pop(context),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
            }, child: Text("Show Modelbottom sheet")),
          ],
        ),
      ),
    ));
  }
}
