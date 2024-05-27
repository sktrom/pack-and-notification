import 'package:flutter/material.dart';

class HomePageSecrin extends StatelessWidget {
  const HomePageSecrin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Push Firebas Notification'),
      ),
      body: const Center(
        child: Text('Home Page'),
      ),
    );
  }
}
