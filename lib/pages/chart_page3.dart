import 'package:flutter/material.dart';

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
          )
        ],
      ),
    );
  }
}
