import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.toggleScreen, {super.key});

  final void Function() toggleScreen;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            "assets/images/quiz-logo.png",
            width: 300,
            color: const Color.fromARGB(200, 255, 255, 255),
          ),
          const SizedBox(height: 40),
          const Text(
            "Learn flutter the Fun way!",
            style: TextStyle(
              fontSize: 20,
              color: Color.fromARGB(255, 243, 191, 255),
            ),
          ),
          const SizedBox(height: 20),
          OutlinedButton.icon(
            onPressed: toggleScreen,
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.purple,
            ),
            icon: const Icon(
              Icons.arrow_drop_down_sharp,
              color: Colors.white,
            ),
            label: const Text(
              "Start Quiz",
              style: TextStyle(
                color: Color.fromARGB(255, 236, 151, 251),
                fontSize: 28,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
