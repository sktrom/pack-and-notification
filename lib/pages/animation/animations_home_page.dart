import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class AnimationsHomePage extends StatefulWidget {
  const AnimationsHomePage({super.key});

  @override
  State<AnimationsHomePage> createState() => _AnimationsHomePageState();
}

class _AnimationsHomePageState extends State<AnimationsHomePage>
    with SingleTickerProviderStateMixin {
  late final AnimationController controller;
  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animation'),
      ),
      body: Stack(
        children: [
          Center(
            child: Lottie.asset(
              'assets/image/Polite.json',
              width: 300,
              height: 500,
              animate: true,
            ),
          ),
          Lottie.asset(
            'assets/image/celep.json',
            controller: controller,
            width: MediaQuery.sizeOf(context).width,
            height: MediaQuery.sizeOf(context).height,
            fit: BoxFit.cover,
            repeat: false,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          var ticker = controller.forward();
          ticker.whenComplete(() {
            controller.reset();
          });
        },
        child: const Icon(Icons.play_arrow),
      ),
    );
  }
}
