import 'dart:async';
import 'dart:convert';
import 'dart:math';
import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/rendering.dart';

class ChartPage2 extends StatefulWidget {
  const ChartPage2({super.key});

  @override
  State<ChartPage2> createState() => _ChartPage2State();
}

class _ChartPage2State extends State<ChartPage2> {
  GlobalKey globalKey = new GlobalKey();
  Uint8List imagen = Uint8List(8);

  Future<Uint8List> captureWidget() async {
    RenderRepaintBoundary boundary =
        globalKey.currentContext?.findRenderObject() as RenderRepaintBoundary;

    final ui.Image image = await boundary.toImage();

    final ByteData? byteData =
        await image.toByteData(format: ui.ImageByteFormat.png);

    final Uint8List pngBytes = byteData!.buffer.asUint8List();
    imagen = pngBytes;
    return pngBytes;
  }

  final List<FlSpot> data1 = List.generate(8, (index) {
    return FlSpot(
      index.toDouble(),
      index * Random().nextDouble(),
    );
  });

  final List<FlSpot> data2 = List.generate(8, (index) {
    return FlSpot(
      index.toDouble(),
      index * Random().nextDouble(),
    );
  });

  final List<FlSpot> data3 = List.generate(8, (index) {
    return FlSpot(
      index.toDouble(),
      index * Random().nextDouble(),
    );
  });

  // final List<DataModel2> _myData = List.generate(
  //   30,
  //   (index) => DataModel2(
  //     x: index,
  //     y1: Random().nextInt(20) + Random().nextDouble(),
  //     y2: Random().nextInt(20) + Random().nextDouble(),
  //     y3: Random().nextInt(20) + Random().nextDouble(),
  //   ),
  // );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CHART 2"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 200,
            ),
            RepaintBoundary(
              key: globalKey,
              child: Container(
                padding: EdgeInsets.all(30),
                height: 250,
                child: BarChart(
                  BarChartData(
                    barGroups: [
                      BarChartGroupData(
                        x: 1,
                        barRods: [
                          BarChartRodData(
                            fromY: 0,
                            toY: 15,
                            color: Colors.red,
                            width: 15,
                          ),
                          BarChartRodData(
                            fromY: 0,
                            toY: 50,
                            color: Colors.amber,
                            width: 15,
                          ),
                          BarChartRodData(
                            fromY: 0,
                            toY: 20,
                            color: Colors.blue,
                            width: 15,
                          ),
                          BarChartRodData(
                            fromY: 5,
                            toY: 10,
                            color: Colors.deepOrangeAccent,
                            width: 15,
                          ),
                          BarChartRodData(
                            fromY: 0,
                            toY: 70,
                            color: Colors.blueGrey,
                            width: 15,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                captureWidget();
              },
              child: Text("png"),
            ),
            Container(
              height: 300,
              width: 300,
              child: Image.memory(Uint8List.fromList(imagen)),
            )
          ],
        ),
      ),
    );
  }
}
