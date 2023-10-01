import 'package:flutter/material.dart';
import 'package:notificationsapp/pages/animation_page.dart';
import 'package:notificationsapp/pages/chart_page.dart';
import 'package:notificationsapp/pages/chart_page1.dart';
import 'package:notificationsapp/pages/chart_page2.dart';
import 'package:notificationsapp/pages/chart_page3.dart';
import 'package:notificationsapp/pages/home_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:notificationsapp/utils/notification_service.dart';
import 'package:go_router/go_router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  await NotificationService.initMessaging();
  runApp(const MyApp());
}

final GoRouter _router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return ChartPage();
      },
    ),
    GoRoute(
      path: '/chart1',
      builder: (BuildContext context, GoRouterState state) {
        return ChartPage1();
      },
    ),
    GoRoute(
      path: '/chart2',
      builder: (BuildContext context, GoRouterState state) {
        return ChartPage2();
      },
    ),
    GoRoute(
      path: '/chart3',
      builder: (BuildContext context, GoRouterState state) {
        return ChartPage3();
      },
    )
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      // home: ChartPage(),
      routerConfig: _router,
    );
  }
}
