import 'package:flutter/material.dart';
import 'package:gemini_app/MyHomePage.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Text(
                  'Your AI Assistant',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  "Meet your smart assistant, designed to understand, learn, and support you in your daily tasks with the power of Gemini AI.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 32,
            ),
            Image.asset('assets/onboarding.png'),
            SizedBox(
              height: 32,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const MyHomePage()), (route) => false);
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
              ),
              child: Row(mainAxisSize: MainAxisSize.min, children: [
                Text('Continue'),
                SizedBox(
                  height: 8,
                ),
                Icon(Icons.arrow_forward)
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
