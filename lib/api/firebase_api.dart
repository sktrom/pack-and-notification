import 'package:firebase_messaging/firebase_messaging.dart';

Future<void> handelBackgroundMessage(RemoteMessage message) async {
  print('Title: ${message.notification?.title}');
  print('Body: ${message.notification?.body}');
  print('Payload: ${message.data}');
}

class FirebaseApi {
  final firebaseMessaging = FirebaseMessaging.instance;

  // void handelMessage(RemoteMessage? message) {
  //   if (message == null) {
  //     return;
  //   } else {
  //     navigatorKey.currentState?.pushNamed(
  //       NotificationSecrren.route,
  //       arguments: message,
  //     );
  //   }
  // }

  // Future initPushNotification() async {
  //   await FirebaseMessaging.instance
  //       .setForegroundNotificationPresentationOptions(
  //     alert: true,
  //     badge: true,
  //     sound: true,
  //   );
  //   FirebaseMessaging.instance.getInitialMessage().then(handelMessage);
  //   FirebaseMessaging.onMessageOpenedApp.listen(handelMessage);
  //   FirebaseMessaging.onBackgroundMessage(handelBackgroundMessage);
  // }

  Future<void> initNotification() async {
    await firebaseMessaging.requestPermission();
    final fCMToken = await firebaseMessaging.getToken();
    print('Token: $fCMToken');
    FirebaseMessaging.onBackgroundMessage(handelBackgroundMessage);

    // initPushNotification();
  }
}
