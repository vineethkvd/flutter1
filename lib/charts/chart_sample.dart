import 'package:flutter/material.dart';

class ChartSample extends StatefulWidget {
  const ChartSample({super.key});

  @override
  State<ChartSample> createState() => _ChartSampleState();
}

class _ChartSampleState extends State<ChartSample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chart sample"),
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          LineCharts(),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Traffic Source Chart",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.purple,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.italic)),
          )
        ],
      ),
    );
  }
}

class LineCharts extends StatefulWidget {
  const LineCharts({super.key});

  @override
  State<LineCharts> createState() => _LineChartsState();
}

class _LineChartsState extends State<LineCharts> {
  static const cutOffYValue = 0.0;
  static const yearTextStyle = TextStyle(fontSize: 12, color: Colors.black);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 360,
      height: 250,
      child: LineCharts(),
    );
  }
}
