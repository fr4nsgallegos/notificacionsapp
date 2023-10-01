import 'package:flutter/material.dart';
import 'package:notificationsapp/pages/chart_page1.dart';
import 'package:notificationsapp/pages/chart_page2.dart';
import 'package:notificationsapp/pages/chart_page3.dart';
import 'package:go_router/go_router.dart';

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
                context.go('/chart1');
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => ChartPage1(),
                //   ),
                // );
              },
              child: Text("CHART 1"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ChartPage2(),
                  ),
                );
              },
              child: Text("CHART 2"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ChartPage3(),
                  ),
                );
              },
              child: Text("CHART 3"),
            ),
          ],
        ),
      ),
    );
  }
}
