import 'package:flutter/material.dart';
import 'package:personal_details/webview.dart';

class HomeScreen extends StatelessWidget {
  final String slackName = "Wilson Aballey";

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const gradient = LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomCenter,
        colors: [
          Color(0xFF3366FF),
          Color(0xFF00CCFF),
          Color.fromARGB(255, 78, 126, 138)
        ]);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF3366FF),
        title: const Center(
            child: Text(
          "Personal Details",
          style: TextStyle(color: Colors.white),
        )),
      ),
      body: Stack(children: [
        Container(
          decoration: const BoxDecoration(gradient: gradient),
        ),
        Center(
          heightFactor: 240,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const CircleAvatar(
                backgroundImage: AssetImage("assets/wilson.jpg"),
                radius: 150,
              ),
              const SizedBox(height: 20),
              Text(
                slackName,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const GitHubWebView(),
                    ),
                  );
                },
                child: const Text(
                  "Open GitHub",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 50)
            ],
          ),
        ),
      ]),
    );
  }
}
