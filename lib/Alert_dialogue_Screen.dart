// import 'package:flutter/material.dart';
//
//
// class AlertdailougScreen extends StatefulWidget {
//   const AlertdailougScreen({super.key});
//
//   @override
//   State<AlertdailougScreen> createState() => _AlertdailougScreenState();
// }
//
// class _AlertdailougScreenState extends State<AlertdailougScreen> {
//
//
//   _displayDialog(BuildContext context) async {
//     return showDialog(
//         context: context,
//         builder: (context) {
//           return AlertDialog(
//             insetPadding: EdgeInsets.all(0),
//             shape: RoundedRectangleBorder(
//                 side: BorderSide(color: Colors.red),
//                 borderRadius: BorderRadius.circular(12)),
//             title: Text('TextField AlertDemo'),
//             content: TextField(
//               decoration: InputDecoration(hintText: "TextField in Dialog"),
//             ),
//             actions: <Widget>[
//               ElevatedButton(
//                 child: new Text('SUBMIT'),
//                 onPressed: () {
//                   Navigator.of(context).pop();
//                 },
//               )
//             ],
//           );
//         });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//         child: Scaffold(
//       body: Container(
//         child: ElevatedButton(
//             onPressed: () {
//               _displayDialog(context);
//             },
//             child: Text("Show Dailoug")),
//       ),
//     ));
//   }
// }
//
//
import 'package:flutter/material.dart';

class alert extends StatefulWidget {
  const alert({super.key});

  @override
  State<alert> createState() => _alertState();
}

class _alertState extends State<alert> {
  displayDialogue(BuildContext context) async {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("Confirm the name"),
            content: TextField(decoration: InputDecoration(
              hintText: "name",
            ),
            ),
            actions: [
              ElevatedButton(onPressed: (){Navigator.of(context).pop();}, child: Text("Yes")),
              ElevatedButton(onPressed: (){Navigator.of(context).pop();}, child: Text("No")),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: ElevatedButton(onPressed: (){
        displayDialogue(context);
      }, child: Text("Input")),
    ));
  }
}
