import 'dart:math';

import 'package:flutter/material.dart';
import 'package:notificationsapp/models/data_model.dart';

class ChartPage1 extends StatefulWidget {
  const ChartPage1({super.key});

  @override
  State<ChartPage1> createState() => _ChartPage1State();
}

class _ChartPage1State extends State<ChartPage1> {
  List<DataModel> _generateData(int max) {
    final random = new Random();
    return List.generate(
      31,
      (index) => DataModel(
          date: DateTime(2023, 1, index + 1), value: random.nextDouble() * max),
    );
  }

  @override
  void initState() {
    super.initState();
    List<DataModel> lista = _generateData(10);
    lista.forEach(
      (element) {
        print(element.date);
        print(element.value);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CHART 1"),
      ),
      body: Container(),
    );
  }
}
