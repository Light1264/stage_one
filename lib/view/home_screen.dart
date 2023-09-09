import 'package:flutter/material.dart';
import 'package:stage_one_task/widgets/app_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8F8F8),
      appBar: AppBar(
        backgroundColor: const Color(0xFF323232),
        toolbarHeight: 70,
        elevation: 0,
        title: const Text(
          "Slack Details",
          style: TextStyle(
            color: Color.fromARGB(255, 240, 239, 239),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: CircleAvatar(
                maxRadius: 80,
                child: Image.asset(
                  "assets/profile_pic.jpg",
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Umunubo Elo",
              style: TextStyle(
                color: Color(0xFF323232),
                fontSize: 30,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            const AppButton()
          ],
        ),
      ),
    );
  }
}
