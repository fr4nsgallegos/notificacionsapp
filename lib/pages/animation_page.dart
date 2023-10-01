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
      body: SingleChildScrollView(
        child: Column(
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
            ),
            SizedBox(
              height: 50,
            ),
            AnimatedAlign(
              alignment: Alignment.bottomCenter,
              duration: Duration(seconds: 1),
              child: Container(
                width: 50,
                height: 50,
                color: Colors.cyan,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              height: 300,
              width: 300,
              color: Colors.amber,
              child: AnimatedAlign(
                alignment: Alignment.topRight,
                duration: Duration(seconds: 3),
                child: Container(
                  width: 50,
                  height: 50,
                  color: Colors.cyan,
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            AnimatedContainer(
              height: 200,
              width: 200,
              curve: Curves.bounceInOut,
              duration: Duration(seconds: 4),
              decoration: BoxDecoration(
                color: Colors.cyan,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            AnimatedCrossFade(
              firstChild: FlutterLogo(
                size: 200,
                style: FlutterLogoStyle.horizontal,
              ),
              secondChild: FlutterLogo(
                size: 200,
                style: FlutterLogoStyle.stacked,
              ),
              crossFadeState: CrossFadeState.showFirst,
              duration: Duration(seconds: 4),
            ),
            SizedBox(
              height: 50,
            ),
            AnimatedCrossFade(
              firstChild: Image.asset(
                "assets/images/batman1.png",
                width: 200,
              ),
              secondChild: Image.asset(
                "assets/images/batman2.jpeg",
                width: 200,
              ),
              crossFadeState: CrossFadeState.showFirst,
              duration: Duration(seconds: 4),
            ),
            SizedBox(
              height: 50,
            ),
            AnimatedDefaultTextStyle(
              child: Text("Liga de la justicia"),
              style: TextStyle(
                color: Colors.cyan,
                fontSize: 50,
              ),
              duration: Duration(seconds: 4),
            ),
            SizedBox(
              height: 50,
            ),
            AnimatedOpacity(
              opacity: 0.1,
              duration: Duration(seconds: 4),
              child: Image.asset("assets/images/batman1.png"),
            ),
            SizedBox(
              height: 200,
            ),
          ],
        ),
      ),
    );
  }
}
