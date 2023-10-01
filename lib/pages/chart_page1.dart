import 'dart:math';

import 'package:flutter/material.dart';
import 'package:notificationsapp/models/data_model.dart';
import 'package:fl_chart/fl_chart.dart';

class ChartPage1 extends StatefulWidget {
  const ChartPage1({super.key});

  @override
  State<ChartPage1> createState() => _ChartPage1State();
}

class _ChartPage1State extends State<ChartPage1> {
  late List<DataModel> lista;

  List<DataModel> _generateData(int max) {
    final random = new Random();
    return List.generate(
      31,
      (index) => DataModel(
          date: DateTime(2023, 1, index + 1), valor: random.nextDouble() * max),
    );
  }

  Widget _graph() {
    final spots = lista
        .asMap()
        .entries
        .map(
          (e) => FlSpot(e.key.toDouble(), e.value.valor),
        )
        .toList();
    return LineChart(
      LineChartData(
        lineBarsData: [
          LineChartBarData(
              spots: spots,
              dotData: FlDotData(show: false),
              color: Colors.amber),
          LineChartBarData(
            spots: spots,
            color: Colors.blue,
            dotData: FlDotData(show: false),
          )
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    lista = _generateData(100);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CHART 1"),
      ),
      body: Container(
        height: 200,
        child: _graph(),
      ),
    );
  }
}
