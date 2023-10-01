import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class HomePage extends StatelessWidget {
  final FlutterLocalNotificationsPlugin _flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  void showLocalNotification() async {
    AndroidInitializationSettings androidInitializationSettings =
        AndroidInitializationSettings("@mipmap/ic_launcher");

    InitializationSettings initializationSettings =
        InitializationSettings(android: androidInitializationSettings);

    await _flutterLocalNotificationsPlugin.initialize(initializationSettings);

    _flutterLocalNotificationsPlugin.show(
      0,
      "HOLA DESDE FLUTTER",
      "Este es el body desde Flutter",
      NotificationDetails(
        android: AndroidNotificationDetails(
          "canal prueba id",
          "canal prueba",
          priority: Priority.max,
          enableVibration: true,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Notifications App",
        ),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("Notificación"),
          onPressed: () {
            showLocalNotification();
          },
        ),
      ),
    );
  }
}
