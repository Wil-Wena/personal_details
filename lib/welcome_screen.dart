import 'package:flutter/material.dart';
import 'package:personal_details/main.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/background.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  "assets/logo.jpg",
                  width: 150,
                  height: 150,
                ),
                const SizedBox(height: 20),

                const Text(
                  "Wilson Personal Details",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w900,
                    color: Colors.blue,
                  ),
                ),
                const SizedBox(height: 100),
                // Welcome message
                const Text(
                  "Welcome! Discover my Slack and GitHub profiles.",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 40),

                ElevatedButton(
                  onPressed: () {
                    // Navigate to your app's main screen
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => const MyApp(),
                      ),
                    );
                  },
                  child: const Text(
                    "Get Started",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
