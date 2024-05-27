import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:pack_and_notifacation/api/firebase_api.dart';
import 'package:pack_and_notifacation/class/notification.dart';
import 'package:pack_and_notifacation/firebase_options.dart';
import 'pages/firbase_notification/home_page_secreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await FirebaseApi().initNotification();

  await FlutterLocalNotificationsss.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // home: AnimationsHomePage(),
      // home: LocalNotification(),
      home: HomePageSecrin(),
    );
  }
}
