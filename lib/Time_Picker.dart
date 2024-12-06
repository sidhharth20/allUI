import 'package:flutter/material.dart';
import 'package:intl/intl.dart'; // For formatting time

class TimePickerDemo extends StatefulWidget {
  @override
  _TimePickerDemoState createState() => _TimePickerDemoState();
}

class _TimePickerDemoState extends State<TimePickerDemo> {
  TextEditingController _timeController = TextEditingController();

  // Function to show the TimePicker and update the TextField
  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (pickedTime != null) {
      setState(() {
        final now = DateTime.now();
        final formattedTime = DateFormat('HH:mm').format(DateTime(
            now.year, now.month, now.day, pickedTime.hour, pickedTime.minute));
        _timeController.text = formattedTime;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Time Picker Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: _timeController,
              decoration: InputDecoration(
                labelText: 'Select Time',
                suffixIcon: Icon(Icons.access_time),
              ),
              readOnly: true, // Prevents the user from typing in the field
              onTap: () => _selectTime(context), // Opens the TimePicker
            ),
          ],
        ),
      ),
    );
  }
}

