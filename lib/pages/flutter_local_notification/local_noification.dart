import 'package:flutter/material.dart';
import 'package:pack_and_notifacation/class/notification.dart';

class LocalNotification extends StatefulWidget {
  const LocalNotification({super.key});

  @override
  State<LocalNotification> createState() => _LocalNotificationState();
}

class _LocalNotificationState extends State<LocalNotification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Local Notification'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton.icon(
              icon: const Icon(Icons.notifications_outlined),
              label: const Text('Simple Notification'),
              onPressed: () {
                FlutterLocalNotificationsss.showSimpleNotification(
                  title: 'Simple Notification',
                  body: 'this ia a simple notification',
                  payload: 'this is a simple data',
                );
              },
            ),
            ElevatedButton.icon(
              icon: const Icon(Icons.timer_outlined),
              label: const Text('Periodic Notification'),
              onPressed: () {
                FlutterLocalNotificationsss.showPeriodicNotification(
                  title: 'Periodic Notification',
                  body: 'This Is a Periodic Notification',
                  payload: 'this is a periodic data',
                );
              },
            ),
            ElevatedButton.icon(
              icon: const Icon(Icons.close),
              label: const Text('Close Periodic Notification'),
              onPressed: () {
                FlutterLocalNotificationsss.cancel(1);
              },
            ),
            ElevatedButton.icon(
              icon: const Icon(Icons.close),
              label: const Text('Close All Notification'),
              onPressed: () {
                FlutterLocalNotificationsss.cancelAll();
              },
            ),
          ],
        ),
      ),
    );
  }
}
