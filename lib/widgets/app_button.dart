import 'package:flutter/material.dart';
import 'package:stage_one_task/widgets/web_view.dart';

class AppButton extends StatelessWidget {
  const AppButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(
            const Color(0xFF323232),
          ),
          elevation: MaterialStateProperty.all<double>(0),
        ),
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => ExploreWebview(
                  title: 'Terms of Service',
                  url: "https://github.com/Light1264"),
            ),
          );
        },
        child: const Text(
          "Open GitHub",
          style: TextStyle(
            color: Color.fromARGB(255, 240, 239, 239),
          ),
        ),
      ),
    );
  }
}
