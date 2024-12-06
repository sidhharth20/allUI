import 'package:flutter/material.dart';

class slider extends StatefulWidget {
  const slider({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return sliderState();
  }
}

class sliderState extends State<slider> {
  int _value = 6;
  double _value0 = 20;
  double _value1 = 20;
  String _status = 'idle';
  Color _statusColor = Colors.amber;

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
          "Slider",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(children: [
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            children: [
              const Icon(
                Icons.volume_up,
                size: 40,
              ),
              Slider(
                  value: _value.toDouble(),
                  min: 1.0,
                  max: 20.0,
                  divisions: 10,
                  activeColor: Colors.green,
                  inactiveColor: Colors.orange,
                  //  label: 'Set volume value',
                  onChanged: (double newValue) {
                    setState(() {
                      _value = newValue.round();
                    });
                  },
                  semanticFormatterCallback: (double newValue) {
                    return '${newValue.round()} dollars';
                  }),
            ]),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: MyStatefulWidget(),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child:
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SliderTheme(
              data: SliderTheme.of(context).copyWith(
                trackHeight: 10.0,
                trackShape: const RoundedRectSliderTrackShape(),
                activeTrackColor: Colors.purple.shade800,
                inactiveTrackColor: Colors.purple.shade100,
                thumbShape: const RoundSliderThumbShape(
                  enabledThumbRadius: 14.0,
                  pressedElevation: 8.0,
                ),
                thumbColor: Colors.pinkAccent,
                overlayColor: Colors.pink.withOpacity(0.2),
                overlayShape:
                const RoundSliderOverlayShape(overlayRadius: 32.0),
                tickMarkShape: const RoundSliderTickMarkShape(),
                activeTickMarkColor: Colors.pinkAccent,
                inactiveTickMarkColor: Colors.white,
                valueIndicatorShape: const PaddleSliderValueIndicatorShape(),
                valueIndicatorColor: Colors.black,
                valueIndicatorTextStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              child: Slider(
                min: 0.0,
                max: 100.0,
                value: _value0,
                divisions: 10,
                label: '${_value0.round()}',
                onChanged: (value) {
                  setState(() {
                    _value0 = value;
                  });
                },
              ),
            )
          ]),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Slider(
              min: 0.0,
              max: 100.0,
              value: _value1,
              divisions: 10,
              onChanged: (value) {
                setState(() {
                  _value1 = value;
                  _status = 'active (${_value1.round()})';
                  _statusColor = Colors.green;
                });
              },
              onChangeStart: (value) {
                setState(() {
                  _status = 'start';
                  _statusColor = Colors.blue;
                });
              },
              onChangeEnd: (value) {
                setState(() {
                  _status = 'end';
                  _statusColor = Colors.red;
                });
              },
            ),
            Text(
              'Status: $_status',
              style: TextStyle(color: _statusColor),
            ),
          ],
        )
      ]),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  double _currentSliderValue = 20;

  @override
  Widget build(BuildContext context) {
    return Slider(
      value: _currentSliderValue,
      max: 100,
      divisions: 5,
      label: _currentSliderValue.round().toString(),
      onChanged: (double value) {
        setState(() {
          _currentSliderValue = value;
        });
      },
    );
  }
}