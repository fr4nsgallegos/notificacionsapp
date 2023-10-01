import 'package:flutter/material.dart';

class ChartPage1 extends StatefulWidget {
  const ChartPage1({super.key});

  @override
  State<ChartPage1> createState() => _ChartPage1State();
}

class _ChartPage1State extends State<ChartPage1> {
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
