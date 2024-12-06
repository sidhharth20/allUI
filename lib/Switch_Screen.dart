
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
class SwitchScreen extends StatefulWidget {
  const SwitchScreen({Key? key}) : super(key: key);

  @override
  State<SwitchScreen> createState() => _SwitchScreenState();
}


class _SwitchScreenState extends State<SwitchScreen> {
  bool status = false;
  bool status1 = false;
  bool status2 = false;
  bool status3 = false;
  bool status4 = false;

  bool isSwitchOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text(
          "Switch",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(
                height: 30,
              ),
              FlutterSwitch(
                width: 100.0,
                height: 55.0,
                toggleSize: 45.0,
                value: status,
                borderRadius: 30.0,
                padding: 2.0,
                toggleColor: Colors.black12,
                switchBorder: Border.all(
                  color: Colors.black,
                  width: 6.0,
                ),
                toggleBorder: Border.all(
                  color: Colors.white,
                  width: 4.0,
                ),
                activeColor: Colors.green,
                inactiveColor: Colors.black38,
                onToggle: (val) {
                  setState(() {
                    status = val;
                  });
                },
              ),
              const SizedBox(height: 20.0),
              FlutterSwitch(
                width: 125.0,
                height: 55.0,
                valueFontSize: 25.0,
                toggleSize: 45.0,
                value: status1,
                borderRadius: 30.0,
                padding: 8.0,
                showOnOff: true,
                onToggle: (val) {
                  setState(() {
                    status1 = val;
                  });
                },
              ),
              const SizedBox(height: 20.0),
              FlutterSwitch(
                activeText: "I am Active",
                inactiveText: "I am Inactive",
                value: status2,
                valueFontSize: 16.0,
                width: 140,
                height: 80,
                borderRadius: 30.0,
                showOnOff: true,
                onToggle: (val) {
                  setState(() {
                    status2 = val;
                  });
                },
              ),
              const SizedBox(height: 10.0),
              FlutterSwitch(
                width: 100.0,
                height: 55.0,
                toggleSize: 45.0,
                value: status3,
                borderRadius: 30.0,
                padding: 2.0,
                activeToggleColor: Colors.purple,
                inactiveToggleColor: Colors.black,
                activeSwitchBorder: Border.all(
                  color: Colors.orange,
                  width: 6.0,
                ),
                inactiveSwitchBorder: Border.all(
                  color: Colors.black,
                  width: 6.0,
                ),
                activeColor: Colors.deepPurpleAccent,
                inactiveColor: Colors.white,
                activeIcon: const Icon(
                  Icons.nightlight_round,
                  color: Colors.white,
                ),
                inactiveIcon: const Icon(
                  Icons.wb_sunny,
                  color: Color(0xFFFFDF5D),
                ),
                onToggle: (val) {
                  setState(() {
                    status3 = val;
                  });
                },
              ),
              const SizedBox(height: 20.0),
              FlutterSwitch(
                width: 100.0,
                height: 55.0,
                toggleSize: 45.0,
                value: status4,
                borderRadius: 30.0,
                padding: 2.0,
                activeToggleColor: Colors.purple,
                inactiveToggleColor: Colors.white,
                activeSwitchBorder: Border.all(
                  color: Colors.green,
                  width: 6.0,
                ),
                inactiveSwitchBorder: Border.all(
                  color: Colors.deepPurple,
                  width: 6.0,
                ),
                activeColor: Colors.greenAccent,
                inactiveColor: Colors.blueAccent,
                activeIcon: Image.network(
                    "https://upload.wikimedia.org/wikipedia/commons/7/7e/Dart-logo.png"),
                inactiveIcon: Image.network(
                    "https://img2.pngio.com/functional-bits-in-flutter-flutter-community-medium-flutter-png-1000_1000.png"),
                onToggle: (val) {
                  setState(() {
                    status4 = val;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}