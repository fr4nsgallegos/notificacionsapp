import 'package:flutter/material.dart';
import 'package:notificationsapp/pages/batman_page.dart';

class AnimationPage extends StatefulWidget {
  const AnimationPage({super.key});

  @override
  State<AnimationPage> createState() => _AnimationPageState();
}

class _AnimationPageState extends State<AnimationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animation Page"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Hero(
            tag: "batmanTag",
            child: Image.asset(
              "assets/images/batman1.png",
              width: 80,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BatmanPage(),
                ),
              );
            },
            child: Text("Animation"),
          )
        ],
      ),
    );
  }
}
