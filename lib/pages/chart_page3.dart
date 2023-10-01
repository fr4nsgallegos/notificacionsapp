import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class ChartPage3 extends StatefulWidget {
  const ChartPage3({super.key});

  @override
  State<ChartPage3> createState() => _ChartPage3State();
}

class _ChartPage3State extends State<ChartPage3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CHART 3"),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 200,
          ),
          Container(
            height: 250,
            child: PieChart(
              PieChartData(
                sections: [
                  PieChartSectionData(
                    value: 50,
                    color: Colors.pink,
                  ),
                  PieChartSectionData(
                    value: 25,
                    color: Colors.cyan,
                    showTitle: true,
                    title: "hola",
                    titlePositionPercentageOffset: 2,
                  ),
                  // PieChartSectionData(value: 25, color: Colors.blueGrey),
                  PieChartSectionData(
                    value: 100,
                    color: Colors.amber,
                    titlePositionPercentageOffset: 2,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
