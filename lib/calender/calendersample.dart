import 'package:flutter/material.dart';

class CalenderSample extends StatefulWidget {
  const CalenderSample({super.key});

  @override
  State<CalenderSample> createState() => _CalenderSampleState();
}

class _CalenderSampleState extends State<CalenderSample> {
  DateTime? selectedDate;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    selectedDate = DateTime.now();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calender"),
      ),
      body: ListView(children: [
        Container(
          height: 100,
          child: FlutterLogo(),
        ),
        SizedBox(height: 10.0),
        CalendarDatePicker(
          initialDate: selectedDate!,
          firstDate:  DateTime(2015, 1, 1),
          lastDate:  DateTime(2024, 1, 1),
          onDateChanged: (date) {
            setState(() {
              selectedDate = date;
            });
          },
        ),
        Text("Selected Date: $selectedDate"),
      ]),
    );
  }
}
