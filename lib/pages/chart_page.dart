import 'package:flutter/material.dart';
import 'package:notificationsapp/pages/chart_page1.dart';

class ChartPage extends StatelessWidget {
  const ChartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CHARTS"),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ChartPage1(),
                  ),
                );
              },
              child: Text("CHART 1"),
            ),
          ],
        ),
      ),
    );
  }
}
