import 'package:flutter/material.dart';
import 'package:notificationsapp/pages/animation_page.dart';
import 'package:notificationsapp/pages/chart_page.dart';
import 'package:notificationsapp/pages/home_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:notificationsapp/utils/notification_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  await NotificationService.initMessaging();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChartPage(),
    );
  }
}
