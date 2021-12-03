import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(home: CheckBoxExample()),
  );
}

class CheckBoxExample extends StatefulWidget {
  const CheckBoxExample({Key? key}) : super(key: key);

  @override
  _CheckBoxExampleState createState() => _CheckBoxExampleState();
}

class _CheckBoxExampleState extends State<CheckBoxExample> {
  final _title = 'checkbox example';
  bool cycling = false;
  bool swimming = false;
  bool reading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_title)),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Cycling:',
                textScaleFactor: 2,
              ),
              Checkbox(
                  // activeColor: Colors.amber,
                  // checkColor: Colors.red,
                  hoverColor: Colors.red,
                  // focusColor: Colors.red,
                  value: cycling,
                  onChanged: (bool? value) {
                    setState(() {
                      cycling = value!;
                    });
                  }),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Swimming:',
                textScaleFactor: 2,
              ),
              Checkbox(
                  // activeColor: Colors.amber,
                  // checkColor: Colors.red,
                  hoverColor: Colors.red,
                  // focusColor: Colors.red,
                  value: swimming,
                  onChanged: (bool? value) {
                    setState(() {
                      swimming = value!;
                    });
                  }),
            ],
          ),
        ],
      ),
    );
  }
}
