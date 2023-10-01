import 'package:flutter/material.dart';

class BatmanPage extends StatefulWidget {
  const BatmanPage({super.key});

  @override
  State<BatmanPage> createState() => _BatmanPageState();
}

class _BatmanPageState extends State<BatmanPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Hero(
            tag: "batmanTag",
            child: Image.asset(
              "assets/images/batman1.png",
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
